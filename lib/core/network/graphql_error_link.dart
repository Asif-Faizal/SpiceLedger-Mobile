import 'dart:async';
import 'package:dio/dio.dart' as dio;
import 'package:graphql_flutter/graphql_flutter.dart';
import '../config/env_config.dart';
import '../storage/secure_storage.dart';
import 'session_force_logout.dart';

class GraphQLErrorLink extends Link {
  final EncryptedStorage storage;
  static Future<bool>? _refreshFuture;

  GraphQLErrorLink(this.storage);

  static const _friendlyConnectionMessage =
      'Unable to connect to the server. Please sign in again.';
  static const _friendlySessionMessage =
      'Your session has expired. Please sign in again.';

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    if (forward == null) {
      throw Exception('NextLink forward is null');
    }

    late StreamController<Response> controller;
    StreamSubscription<Response>? originalSubscription;
    StreamSubscription<Response>? retrySubscription;
    var isRetrying = false;

    controller = StreamController<Response>(
      onListen: () {
        void onResponse(Response response) async {
          final isUnauthenticated = response.errors?.any((error) {
                final msg = error.message.toLowerCase();
                return msg.contains('unauthenticated') ||
                    msg.contains('token is expired') ||
                    msg.contains('unauthorized') ||
                    msg.contains('jwt');
              }) ??
              false;

          if (isUnauthenticated) {
            isRetrying = true;
            final success = await _synchronizedRefreshToken();

            if (success) {
              retrySubscription = forward(request).listen(
                (r) => controller.add(r),
                onError: (e) async {
                  await _emitCleanError(controller, e);
                },
                onDone: () => controller.close(),
              );
            } else {
              await SessionForceLogout.run(storage);
              controller.addError(Exception(_friendlySessionMessage));
              await controller.close();
            }
          } else {
            controller.add(response);
          }
        }

        void onError(Object error) async {
          await _emitCleanError(controller, error);
        }

        originalSubscription = forward(request).listen(
          onResponse,
          onError: onError,
          onDone: () {
            if (!isRetrying) {
              controller.close();
            }
          },
        );
      },
      onCancel: () {
        originalSubscription?.cancel();
        retrySubscription?.cancel();
      },
    );

    return controller.stream;
  }

  Future<void> _emitCleanError(
    StreamController<Response> controller,
    Object error,
  ) async {
    final errStr = error.toString().toLowerCase();

    if (_isConnectionFailure(errStr)) {
      await SessionForceLogout.run(storage);
      controller.addError(Exception(_friendlyConnectionMessage));
      await controller.close();
      return;
    }

    final isUnauthenticated = errStr.contains('unauthenticated') ||
        errStr.contains('token is expired') ||
        errStr.contains('unauthorized') ||
        errStr.contains('401');

    if (isUnauthenticated) {
      final success = await _synchronizedRefreshToken();
      if (!success) {
        await SessionForceLogout.run(storage);
        controller.addError(Exception(_friendlySessionMessage));
        await controller.close();
        return;
      }
    }

    controller.addError(Exception(_friendlyMessageFromError(error)));
    await controller.close();
  }

  bool _isConnectionFailure(String errStr) {
    return errStr.contains('socketexception') ||
        errStr.contains('connection refused') ||
        errStr.contains('connection errored') ||
        errStr.contains('failed host lookup') ||
        errStr.contains('network is unreachable') ||
        errStr.contains('clientexception') ||
        errStr.contains('xmlhttprequest error') ||
        errStr.contains('timeout');
  }

  String _friendlyMessageFromError(Object error) {
    final errStr = error.toString();
    final lower = errStr.toLowerCase();
    if (_isConnectionFailure(lower)) {
      return _friendlyConnectionMessage;
    }
    if (lower.contains('unauthenticated') ||
        lower.contains('token is expired') ||
        lower.contains('unauthorized')) {
      return _friendlySessionMessage;
    }
    return _sanitizeGraphqlMessage(errStr);
  }

  String _sanitizeGraphqlMessage(String raw) {
    final cleaned = raw
        .replaceAll(RegExp(r'OperationException\([^)]*\)'), '')
        .replaceAll(RegExp(r'ServerException:[^\n]*'), '')
        .replaceAll(RegExp(r'ClientException:[^\n]*'), '')
        .replaceAll(RegExp(r'SocketException:[^\n]*'), '')
        .replaceAll(RegExp(r'package:[^\s]+'), '')
        .replaceAll(RegExp(r'#\d+\s+'), '')
        .trim();

    if (cleaned.isEmpty ||
        cleaned.length > 180 ||
        cleaned.contains('http://') ||
        cleaned.contains('https://')) {
      return 'Something went wrong. Please try again.';
    }
    return cleaned;
  }

  Future<bool> _synchronizedRefreshToken() async {
    if (_refreshFuture != null) {
      return _refreshFuture!;
    }

    _refreshFuture = _refreshToken();
    try {
      return await _refreshFuture!;
    } finally {
      _refreshFuture = null;
    }
  }

  Future<bool> _refreshToken() async {
    final refreshToken = await storage.read('refresh_token');
    if (refreshToken == null || refreshToken.isEmpty) {
      return false;
    }

    try {
      final dioClient = dio.Dio(dio.BaseOptions(baseUrl: ApiConfig.baseUrl));
      final response = await dioClient.post(
        '/rest/accounts/refresh',
        data: {'refresh_token': refreshToken, 'device_id': 'dev_987'},
        options: dio.Options(headers: ApiConfig.basicAuthHeaders),
      );

      final Map<String, dynamic> responseData = response.data is Map
          ? Map<String, dynamic>.from(response.data)
          : response.data;

      final bool success = responseData['success'] ?? false;

      if (success && responseData['data'] != null) {
        final data = responseData['data'];
        await storage.write('access_token', data['access_token']);
        await storage.write('refresh_token', data['refresh_token']);
        return true;
      }
    } catch (_) {
      // Refresh failed — caller will force logout.
    }
    return false;
  }
}

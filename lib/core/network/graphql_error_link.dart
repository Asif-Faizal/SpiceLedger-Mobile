import 'dart:async';
import 'package:dio/dio.dart' as dio;
import 'package:graphql_flutter/graphql_flutter.dart';
import '../config/env_config.dart';
import '../storage/secure_storage.dart';

class GraphQLErrorLink extends Link {
  final EncryptedStorage storage;
  static Future<bool>? _refreshFuture;

  GraphQLErrorLink(this.storage);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    if (forward == null) {
      throw Exception('NextLink forward is null');
    }

    late StreamController<Response> controller;
    StreamSubscription<Response>? originalSubscription;
    StreamSubscription<Response>? retrySubscription;
    bool isRetrying = false;

    controller = StreamController<Response>(
      onListen: () {
        void onResponse(Response response) async {
          final bool isUnauthenticated = response.errors?.any((error) =>
                  error.message.toLowerCase().contains('unauthenticated') ||
                  error.message.toLowerCase().contains('token is expired')) ??
              false;

          if (isUnauthenticated) {
            print('GraphQLErrorLink: 401/Unauthenticated in response. Triggering refresh.');
            isRetrying = true;
            final success = await _synchronizedRefreshToken();
            
            if (success) {
              print('GraphQLErrorLink: Refresh success. Retrying...');
              retrySubscription = forward(request).listen(
                (r) => controller.add(r),
                onError: (e) => controller.addError(e),
                onDone: () => controller.close(),
              );
            } else {
              controller.add(response);
              controller.close();
            }
          } else {
            controller.add(response);
          }
        }

        void onError(Object error) async {
          final errStr = error.toString().toLowerCase();
          final bool isUnauthenticated = errStr.contains('unauthenticated') ||
              errStr.contains('token is expired') ||
              errStr.contains('401');

          if (isUnauthenticated) {
            print('GraphQLErrorLink: 401/Unauthenticated in error stream: $error. Triggering refresh.');
            isRetrying = true;
            final success = await _synchronizedRefreshToken();
            
            if (success) {
              print('GraphQLErrorLink: Refresh success. Retrying...');
              retrySubscription = forward(request).listen(
                (r) => controller.add(r),
                onError: (e) => controller.addError(e),
                onDone: () => controller.close(),
              );
            } else {
              controller.addError(error);
              controller.close();
            }
          } else {
            controller.addError(error);
          }
        }

        originalSubscription = forward(request).listen(
          onResponse,
          onError: onError,
          onDone: () {
            // Only close if we are not in the process of retrying
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

  Future<bool> _synchronizedRefreshToken() async {
    if (_refreshFuture != null) {
      print('GraphQLErrorLink: Refresh already in progress. Waiting...');
      return _refreshFuture!;
    }

    _refreshFuture = _refreshToken();
    try {
      final result = await _refreshFuture!;
      return result;
    } finally {
      _refreshFuture = null;
    }
  }

  Future<bool> _refreshToken() async {
    final refreshToken = await storage.read('refresh_token');
    if (refreshToken == null || refreshToken.isEmpty) {
      print('GraphQLErrorLink: No refresh token available.');
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
        final newAccessToken = data['access_token'];
        final newRefreshToken = data['refresh_token'];

        await storage.write('access_token', newAccessToken);
        await storage.write('refresh_token', newRefreshToken);
        print('GraphQLErrorLink: Tokens updated successfully.');
        return true;
      } else {
        print('GraphQLErrorLink: Refresh failed in payload: ${responseData['message']}');
      }
    } catch (e) {
      print('GraphQLErrorLink: Exception during refresh: $e');
    }
    return false;
  }
}

import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:spice_ledger/features/onboarding/presentation/pages/splash_screen.dart';
import 'package:spice_ledger/main.dart';
import '../config/env_config.dart';
import '../storage/secure_storage.dart';

@injectable
class TokenInterceptor extends Interceptor {
  final EncryptedStorage storage;

  TokenInterceptor(this.storage);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await storage.read('access_token');
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final status = err.response?.statusCode;

    if (status == 401) {
      final refreshToken = await storage.read('refresh_token');
      if (refreshToken == null || refreshToken.isEmpty) {
        return handler.next(err);
      }

      try {
        final baseUrl = err.requestOptions.baseUrl.isNotEmpty
            ? err.requestOptions.baseUrl
            : ApiConfig.baseUrl;

        final dio = Dio(BaseOptions(baseUrl: baseUrl));

        final refreshResponse = await dio.post(
          '/rest/accounts/refresh',
          data: {'refresh_token': refreshToken, 'device_id': 'dev_987'},
          options: Options(headers: ApiConfig.basicAuthHeaders),
        );

        final Map<String, dynamic> responseData = refreshResponse.data is String
            ? Map<String, dynamic>.from(refreshResponse.data as Map)
            : refreshResponse.data;

        final bool success = responseData['success'] ?? false;

        if (success && responseData['data'] != null) {
          final data = responseData['data'];
          final newAccessToken = data['access_token'];
          final newRefreshToken = data['refresh_token'];

          log('TokenInterceptor: Refresh successful. Saving new tokens.');
          await storage.write('access_token', newAccessToken);
          await storage.write('refresh_token', newRefreshToken);

          final originalOptions = err.requestOptions;
          originalOptions.headers['Authorization'] = 'Bearer $newAccessToken';

          log(
            'TokenInterceptor: Retrying original request: ${originalOptions.path}',
          );

          final retryDio = Dio(BaseOptions(baseUrl: baseUrl));
          final response = await retryDio.fetch(originalOptions);

          log(
            'TokenInterceptor: Retry completed with status ${response.statusCode}',
          );
          return handler.resolve(response);
        } else {
          log(
            'TokenInterceptor: Refresh failed in payload: ${responseData['message']}',
          );
          await _handleLogout();
          return handler.next(err);
        }
      } catch (e) {
        log('TokenInterceptor: Exception during refresh/retry: $e');
        await _handleLogout();
        return handler.next(err);
      }
    }

    return handler.next(err);
  }

  Future<void> _handleLogout() async {
    await storage.deleteAll();
    navigatorKey.currentState?.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const SplashScreen()),
      (route) => false,
    );
  }
}

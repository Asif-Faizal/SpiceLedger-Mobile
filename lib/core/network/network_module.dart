import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'token_interceptor.dart';
import '../config/env_config.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio(TokenInterceptor tokenInterceptor) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    dio.interceptors.add(tokenInterceptor);
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
      ),
    );

    return dio;
  }
}

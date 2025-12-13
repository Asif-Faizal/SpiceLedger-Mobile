import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
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
    final token = await storage.read('auth_token');
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  // Handle 401 Unauthorized here if needed (Refresh Token)
  // User provided a refresh token curl, so logic is needed.
  // But for now let's stick to basic Token addition.
}

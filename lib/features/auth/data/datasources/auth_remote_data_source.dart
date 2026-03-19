import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/config/env_config.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/models/api_response.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
  Future<void> register(String name, String email, String password);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio client;

  AuthRemoteDataSourceImpl(this.client);

  @override
  Future<UserModel> login(String email, String password) async {
    try {
      final response = await client.post(
        '/rest/accounts/login',
        data: {'email': email, 'password': password},
        options: Options(headers: ApiConfig.basicAuthHeaders),
      );

      final apiResponse = ApiResponse<UserModel>.fromJson(
        response.data as Map<String, dynamic>,
        (json) => UserModel.fromJson(json),
      );

      if (apiResponse.success && apiResponse.data != null) {
        return apiResponse.data!;
      } else {
        throw ServerFailure(apiResponse.message);
      }
    } on DioException catch (e) {
      final responseData = e.response?.data;
      if (responseData is Map<String, dynamic>) {
        final apiResponse = ApiResponse.fromJson(responseData, (json) => json);
        throw ServerFailure(apiResponse.message);
      }
      throw ServerFailure(e.message ?? 'Login failed');
    }
  }

  @override
  Future<void> register(String name, String email, String password) async {
    try {
      final response = await client.post(
        '/api/auth/register',
        data: {'name': name, 'email': email, 'password': password},
      );

      final apiResponse = ApiResponse.fromJson(
        response.data as Map<String, dynamic>,
        (json) => json,
      );

      if (!apiResponse.success) {
        throw ServerFailure(apiResponse.message);
      }
    } on DioException catch (e) {
      final responseData = e.response?.data;
      if (responseData is Map<String, dynamic>) {
        final apiResponse = ApiResponse.fromJson(responseData, (json) => json);
        throw ServerFailure(apiResponse.message);
      }
      throw ServerFailure(e.message ?? 'Registration failed');
    }
  }
}

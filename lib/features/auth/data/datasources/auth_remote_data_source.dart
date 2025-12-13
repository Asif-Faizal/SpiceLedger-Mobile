import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
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
        '/api/auth/login',
        data: {'email': email, 'password': password},
      );
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        throw const ServerFailure('Login failed');
      }
    } on DioException catch (e) {
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
      if (response.statusCode != 200 && response.statusCode != 201) {
        throw const ServerFailure('Registration failed');
      }
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'Registration failed');
    }
  }
}

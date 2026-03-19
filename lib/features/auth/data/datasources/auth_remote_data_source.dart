import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/config/env_config.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/error_handler.dart';
import '../../../../core/network/models/api_response.dart';
import '../models/user/user_model.dart';
import '../models/login/login_request_model.dart';
import '../models/register/register_request_model.dart';
import '../models/email_check/email_check_model.dart';
import '../../domain/entities/user_entity.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseModel> login(String email, String password);
  Future<UserModel> register(String name, String email, String password);
  Future<EmailCheckModel> checkEmail(String email);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio client;

  AuthRemoteDataSourceImpl(this.client);

  @override
  Future<LoginResponseModel> login(String email, String password) async {
    try {
      final request = LoginRequestModel(
        email: email,
        password: password,
        deviceId: 'dev_987',
      );
      final response = await client.post(
        '/rest/accounts/login',
        data: request.toJson(),
        options: Options(headers: ApiConfig.basicAuthHeaders),
      );

      final apiResponse = ApiResponse<LoginResponseModel>.fromJson(
        response.data as Map<String, dynamic>,
        (json) => LoginResponseModel.fromJson(json),
      );

      if (apiResponse.success && apiResponse.data != null) {
        return apiResponse.data!;
      } else {
        throw ServerFailure(apiResponse.message);
      }
    } catch (e) {
      throw ErrorHandler.handle(e);
    }
  }

  @override
  Future<UserModel> register(String name, String email, String password) async {
    try {
      final request = RegisterRequestModel(
        name: name,
        email: email,
        password: password,
        userType: UserType.merchant,
      );
      final response = await client.post(
        '/rest/accounts',
        data: request.toJson(),
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
    } catch (e) {
      throw ErrorHandler.handle(e);
    }
  }

  @override
  Future<EmailCheckModel> checkEmail(String email) async {
    try {
      final response = await client.get(
        '/rest/accounts/check-email',
        queryParameters: {'email': email},
        options: Options(headers: ApiConfig.basicAuthHeaders),
      );

      final apiResponse = ApiResponse<EmailCheckModel>.fromJson(
        response.data,
        (json) => EmailCheckModel.fromJson(json),
      );

      if (apiResponse.success && apiResponse.data != null) {
        return apiResponse.data!;
      } else {
        throw ServerFailure(apiResponse.message);
      }
    } catch (e) {
      throw ErrorHandler.handle(e);
    }
  }
}

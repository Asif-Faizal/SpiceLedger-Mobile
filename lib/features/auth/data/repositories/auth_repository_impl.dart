import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../domain/entities/email_check_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/email_check/email_check_model.dart';
import '../models/user/user_model.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final EncryptedStorage storage;

  AuthRepositoryImpl(this.remoteDataSource, this.storage);

  @override
  Future<Either<Failure, UserEntity>> login(
    String email,
    String password,
  ) async {
    try {
      final loginResponse = await remoteDataSource.login(email, password);
      await storage.write('access_token', loginResponse.accessToken);
      await storage.write('refresh_token', loginResponse.refreshToken);
      await storage.write('user_id', loginResponse.account.id);
      await storage.write('user_type', loginResponse.account.userType.name);
      await storage.write('name', loginResponse.account.name);
      return Right(loginResponse.account.toEntity());
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> register(
    String name,
    String email,
    String? password, {
    String? id,
  }) async {
    try {
      final userModel = await remoteDataSource.register(
        name,
        email,
        password,
        id: id,
      );
      return Right(userModel.toEntity());
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, EmailCheckEntity>> checkEmail(String email) async {
    try {
      final model = await remoteDataSource.checkEmail(email);
      return Right(model.toEntity());
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getProfile() async {
    try {
      final model = await remoteDataSource.getProfile();
      return Right(model.toEntity());
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await remoteDataSource.logout();
      await storage.deleteAll();
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

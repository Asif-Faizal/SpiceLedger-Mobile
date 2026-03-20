import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/email_check_entity.dart';

import '../../domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login(String email, String password);
  Future<Either<Failure, UserEntity>> register(
    String name,
    String email,
    String password,
  );
  Future<Either<Failure, EmailCheckEntity>> checkEmail(String email);
  Future<Either<Failure, UserEntity>> getProfile(String userId);
  Future<Either<Failure, void>> logout();
}

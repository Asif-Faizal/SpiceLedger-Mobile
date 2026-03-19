import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/email_check_entity.dart';
import '../repositories/auth_repository.dart';

@lazySingleton
class CheckEmailUseCase {
  final AuthRepository repository;

  CheckEmailUseCase(this.repository);

  Future<Either<Failure, EmailCheckEntity>> call(String email) {
    return repository.checkEmail(email);
  }
}

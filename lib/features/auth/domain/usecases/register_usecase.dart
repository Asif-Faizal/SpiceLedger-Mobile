import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../repositories/auth_repository.dart';

@lazySingleton
class RegisterUseCase {
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  Future<Either<Failure, void>> call(
    String name,
    String email,
    String password,
  ) async {
    return await repository.register(name, email, password);
  }
}

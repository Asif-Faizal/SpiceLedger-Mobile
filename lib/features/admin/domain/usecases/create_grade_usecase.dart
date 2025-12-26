import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../repositories/admin_repository.dart';

@lazySingleton
class CreateGradeUseCase {
  final AdminRepository repository;

  CreateGradeUseCase(this.repository);

  Future<Either<Failure, void>> call(
    String productId,
    String name,
    String description,
  ) async {
    return await repository.createGrade(productId, name, description);
  }
}

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../repositories/admin_repository.dart';

@lazySingleton
class CreateProductUseCase {
  final AdminRepository repository;

  CreateProductUseCase(this.repository);

  Future<Either<Failure, void>> call(
    String name,
    String description,
  ) async {
    return await repository.createProduct(name, description);
  }
}

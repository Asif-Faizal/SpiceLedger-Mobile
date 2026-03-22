import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/product_entity.dart';
import '../repositories/admin_product_repository.dart';

@injectable
class GetProductsUseCase {
  final AdminProductRepository repository;
  GetProductsUseCase(this.repository);

  Future<Either<Failure, List<ProductEntity>>> call(
      {String? date, String? search}) async {
    return await repository.getProducts(date, search);
  }
}

@injectable
class CreateProductUseCase {
  final AdminProductRepository repository;
  CreateProductUseCase(this.repository);

  Future<Either<Failure, ProductEntity>> call(Map<String, dynamic> input) async {
    return await repository.createProduct(input);
  }
}

@injectable
class CreateGradeUseCase {
  final AdminProductRepository repository;
  CreateGradeUseCase(this.repository);

  Future<Either<Failure, GradeEntity>> call(Map<String, dynamic> input) async {
    return await repository.createGrade(input);
  }
}

@injectable
class CreateDailyPriceUseCase {
  final AdminProductRepository repository;
  CreateDailyPriceUseCase(this.repository);

  Future<Either<Failure, void>> call(Map<String, dynamic> input) async {
    return await repository.createDailyPrice(input);
  }
}

@injectable
class GetProductsRestUseCase {
  final AdminProductRepository repository;
  GetProductsRestUseCase(this.repository);

  Future<Either<Failure, List<ProductEntity>>> call() async {
    return await repository.getProductsRest();
  }
}

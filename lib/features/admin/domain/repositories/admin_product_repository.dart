import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/product_entity.dart';

abstract class AdminProductRepository {
  Future<Either<Failure, List<ProductEntity>>> getProducts(String? date, String? search);
  Future<Either<Failure, ProductEntity>> createProduct(Map<String, dynamic> input);
  Future<Either<Failure, GradeEntity>> createGrade(Map<String, dynamic> input);
  Future<Either<Failure, void>> createDailyPrice(Map<String, dynamic> input);
  Future<Either<Failure, List<ProductEntity>>> getProductsRest();
}

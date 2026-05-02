import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/dashboard_entity.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/admin_product_repository.dart';
import '../datasources/admin_product_remote_data_source.dart';
import '../models/dashboard_model.dart';
import '../models/product_model.dart';

@Injectable(as: AdminProductRepository)
class AdminProductRepositoryImpl implements AdminProductRepository {
  final AdminProductRemoteDataSource remoteDataSource;

  AdminProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, AdminDashboardEntity>> getDashboard() async {
    try {
      final model = await remoteDataSource.getDashboard();
      return Right(model.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts(
      String? date, String? search) async {
    try {
      final models = await remoteDataSource.getProducts(date, search);
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProductEntity>> createProduct(
      Map<String, dynamic> input) async {
    try {
      final model = await remoteDataSource.createProduct(input);
      return Right(model.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GradeEntity>> createGrade(
      Map<String, dynamic> input) async {
    try {
      final model = await remoteDataSource.createGrade(input);
      return Right(model.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> createDailyPrice(
      Map<String, dynamic> input) async {
    try {
      await remoteDataSource.createDailyPrice(input);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProductsRest() async {
    try {
      final models = await remoteDataSource.getProductsRest();
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

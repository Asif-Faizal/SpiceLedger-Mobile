import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/user_stats.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/admin_repository.dart';
import '../datasources/admin_remote_data_source.dart';
import '../models/user_stats_model.dart';
import '../models/product_model.dart';
import '../models/daily_price_model.dart';

@LazySingleton(as: AdminRepository)
class AdminRepositoryImpl implements AdminRepository {
  final AdminRemoteDataSource remoteDataSource;

  AdminRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, UserStats>> getUserStats() async {
    try {
      final model = await remoteDataSource.getUserStats();
      return Right(model.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> createGrade(
    String name,
    String description,
  ) async {
    try {
      await remoteDataSource.createGrade(name, description);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> setDailyPrice(
    String date,
    String grade,
    double price,
  ) async {
    try {
      await remoteDataSource.setDailyPrice(date, grade, price);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final models = await remoteDataSource.getProducts();
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, DailyPricesResponse>> getDailyPrices(String date) async {
    try {
      final resp = await remoteDataSource.getDailyPrices(date);
      return Right(resp);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

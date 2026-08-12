import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/catalog_entity.dart';
import '../../domain/entities/merchant_dashboard_entity.dart';
import '../../domain/entities/merchant_entity.dart';
import '../../domain/entities/merchant_position_entity.dart';
import '../../domain/repositories/merchant_repository.dart';
import '../datasources/merchant_remote_data_source.dart';
import '../models/catalog_product_model.dart';
import '../models/merchant_dashboard_model.dart';
import '../models/merchant_model.dart';
import '../models/merchant_position_model.dart';

@LazySingleton(as: MerchantRepository)
class MerchantRepositoryImpl implements MerchantRepository {
  final MerchantRemoteDataSource remoteDataSource;

  MerchantRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, MerchantEntity?>> getMerchantDetails() async {
    try {
      final model = await remoteDataSource.getMerchantDetails();
      return Right(model?.toEntity());
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MerchantEntity>> saveMerchantDetails(
    MerchantEntity entity,
  ) async {
    try {
      final model = MerchantModel.fromEntity(entity);
      final savedModel = await remoteDataSource.saveMerchantDetails(model);
      return Right(savedModel.toEntity());
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MerchantDashboardEntity>> getDashboard({
    int days = 7,
  }) async {
    try {
      final model = await remoteDataSource.getDashboard(days: days);
      return Right(model.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MerchantProductEntity>>> getProducts({
    String? date,
    String? search,
  }) async {
    try {
      final models = await remoteDataSource.getProducts(date: date, search: search);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MerchantPositionEntity>>> getPositions() async {
    try {
      final models = await remoteDataSource.getPositions();
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MerchantPositionEntity>> getGradePosition(
    String spiceGradeId,
  ) async {
    try {
      final model = await remoteDataSource.getGradePosition(spiceGradeId);
      return Right(model.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MerchantTransactionEntity>>> listTransactions({
    int skip = 0,
    int take = 10,
    String? spiceGradeId,
    String? productId,
    String? sort,
    String? dateFrom,
    String? dateTo,
  }) async {
    try {
      final models = await remoteDataSource.listTransactions(
        skip: skip,
        take: take,
        spiceGradeId: spiceGradeId,
        productId: productId,
        sort: sort,
        dateFrom: dateFrom,
        dateTo: dateTo,
      );
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MerchantTransactionEntity>>>
      listGradeTransactions({
    required String spiceGradeId,
    int skip = 0,
    int take = 10,
    String? sort,
    String? dateFrom,
    String? dateTo,
  }) async {
    try {
      final models = await remoteDataSource.listGradeTransactions(
        spiceGradeId: spiceGradeId,
        skip: skip,
        take: take,
        sort: sort,
        dateFrom: dateFrom,
        dateTo: dateTo,
      );
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

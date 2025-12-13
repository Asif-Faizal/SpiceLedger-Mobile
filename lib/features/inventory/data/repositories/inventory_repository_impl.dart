import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/grade.dart';
import '../../domain/entities/inventory.dart';
import '../../domain/repositories/inventory_repository.dart';
import '../datasources/inventory_remote_data_source.dart';
import '../models/grade_model.dart';
import '../models/inventory_model.dart';

@LazySingleton(as: InventoryRepository)
class InventoryRepositoryImpl implements InventoryRepository {
  final InventoryRemoteDataSource remoteDataSource;

  InventoryRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Grade>>> getGrades() async {
    try {
      final models = await remoteDataSource.getGrades();
      return Right(models.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> addPurchaseLot(
    String date,
    String gradeId,
    double quantity,
    double unitCost,
  ) async {
    try {
      await remoteDataSource.addPurchaseLot(date, gradeId, quantity, unitCost);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> addSale(
    String date,
    String gradeId,
    double quantity,
    double unitPrice,
  ) async {
    try {
      await remoteDataSource.addSale(date, gradeId, quantity, unitPrice);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Inventory>> getCurrentInventory() async {
    try {
      final model = await remoteDataSource.getCurrentInventory();
      return Right(model.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

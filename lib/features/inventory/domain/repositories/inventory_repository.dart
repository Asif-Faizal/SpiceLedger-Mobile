import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/grade.dart';
import '../entities/inventory.dart';

abstract class InventoryRepository {
  Future<Either<Failure, List<Grade>>> getGrades();
  Future<Either<Failure, void>> addPurchaseLot(
    String date,
    String gradeId,
    double quantity,
    double unitCost,
  );
  Future<Either<Failure, void>> addSale(
    String date,
    String gradeId,
    double quantity,
    double unitPrice,
  );
  Future<Either<Failure, Inventory>> getCurrentInventory();
}

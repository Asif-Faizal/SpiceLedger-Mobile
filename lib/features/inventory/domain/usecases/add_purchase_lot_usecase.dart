import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../repositories/inventory_repository.dart';

@lazySingleton
class AddPurchaseLotUseCase {
  final InventoryRepository repository;

  AddPurchaseLotUseCase(this.repository);

  Future<Either<Failure, void>> call(
    String date,
    String gradeId,
    double quantity,
    double unitCost,
  ) async {
    return await repository.addPurchaseLot(date, gradeId, quantity, unitCost);
  }
}

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../repositories/inventory_repository.dart';

@lazySingleton
class AddSaleUseCase {
  final InventoryRepository repository;

  AddSaleUseCase(this.repository);

  Future<Either<Failure, void>> call(
    String date,
    String gradeId,
    double quantity,
    double unitPrice,
  ) async {
    return await repository.addSale(date, gradeId, quantity, unitPrice);
  }
}

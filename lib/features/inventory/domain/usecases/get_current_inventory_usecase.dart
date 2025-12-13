import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/inventory.dart';
import '../repositories/inventory_repository.dart';

@lazySingleton
class GetCurrentInventoryUseCase {
  final InventoryRepository repository;

  GetCurrentInventoryUseCase(this.repository);

  Future<Either<Failure, Inventory>> call() async {
    return await repository.getCurrentInventory();
  }
}

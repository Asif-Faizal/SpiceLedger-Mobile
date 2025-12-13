import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/grade.dart';
import '../repositories/inventory_repository.dart';

@lazySingleton
class GetGradesUseCase {
  final InventoryRepository repository;

  GetGradesUseCase(this.repository);

  Future<Either<Failure, List<Grade>>> call() async {
    return await repository.getGrades();
  }
}

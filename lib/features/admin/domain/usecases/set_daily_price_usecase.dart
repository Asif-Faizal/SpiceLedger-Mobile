import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../repositories/admin_repository.dart';

@lazySingleton
class SetDailyPriceUseCase {
  final AdminRepository repository;

  SetDailyPriceUseCase(this.repository);

  Future<Either<Failure, void>> call(
    String date,
    String productId,
    String gradeId,
    double price,
  ) async {
    return await repository.setDailyPrice(date, productId, gradeId, price);
  }
}

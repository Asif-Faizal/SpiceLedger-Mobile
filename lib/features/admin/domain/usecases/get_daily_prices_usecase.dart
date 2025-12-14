import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../data/models/daily_price_model.dart';
import '../repositories/admin_repository.dart';

@lazySingleton
class GetDailyPricesUseCase {
  final AdminRepository repository;

  GetDailyPricesUseCase(this.repository);

  Future<Either<Failure, DailyPricesResponse>> call(String date) async {
    return await repository.getDailyPrices(date);
  }
}

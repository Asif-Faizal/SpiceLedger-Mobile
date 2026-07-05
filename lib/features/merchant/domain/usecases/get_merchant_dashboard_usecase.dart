import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/merchant_dashboard_entity.dart';
import '../repositories/merchant_repository.dart';

@injectable
class GetMerchantDashboardUseCase {
  final MerchantRepository repository;

  GetMerchantDashboardUseCase(this.repository);

  Future<Either<Failure, MerchantDashboardEntity>> call({int days = 7}) async {
    return repository.getDashboard(days: days);
  }
}

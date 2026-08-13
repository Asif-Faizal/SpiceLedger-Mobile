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

@injectable
class GetMerchantPnlTrendUseCase {
  final MerchantRepository repository;

  GetMerchantPnlTrendUseCase(this.repository);

  Future<Either<Failure, MerchantPnlTrendEntity>> call({int days = 7}) {
    return repository.getPnlTrend(days: days);
  }
}

@injectable
class GetMerchantActivityTrendUseCase {
  final MerchantRepository repository;

  GetMerchantActivityTrendUseCase(this.repository);

  Future<Either<Failure, MerchantActivityTrendEntity>> call({int days = 7}) {
    return repository.getActivityTrend(days: days);
  }
}

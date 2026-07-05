import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/merchant_dashboard_entity.dart';
import '../entities/merchant_entity.dart';

abstract class MerchantRepository {
  Future<Either<Failure, MerchantEntity?>> getMerchantDetails();
  Future<Either<Failure, MerchantEntity>> saveMerchantDetails(
    MerchantEntity entity,
  );
  Future<Either<Failure, MerchantDashboardEntity>> getDashboard({int days});
}

import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/catalog_entity.dart';
import '../entities/merchant_dashboard_entity.dart';
import '../entities/merchant_entity.dart';
import '../entities/merchant_position_entity.dart';

abstract class MerchantRepository {
  Future<Either<Failure, MerchantEntity?>> getMerchantDetails();
  Future<Either<Failure, MerchantEntity>> saveMerchantDetails(
    MerchantEntity entity,
  );
  Future<Either<Failure, MerchantDashboardEntity>> getDashboard({int days});
  Future<Either<Failure, MerchantPnlTrendEntity>> getPnlTrend({int days});
  Future<Either<Failure, MerchantActivityTrendEntity>> getActivityTrend({
    int days,
  });
  Future<Either<Failure, List<MerchantProductEntity>>> getProducts({
    String? date,
    String? search,
  });
  Future<Either<Failure, List<MerchantPositionEntity>>> getPositions();
  Future<Either<Failure, MerchantPositionEntity>> getGradePosition(
    String spiceGradeId,
  );
  Future<Either<Failure, List<MerchantTransactionEntity>>> listTransactions({
    int skip,
    int take,
    String? spiceGradeId,
    String? productId,
    String? sort,
    String? dateFrom,
    String? dateTo,
  });
  Future<Either<Failure, List<MerchantTransactionEntity>>> listGradeTransactions({
    required String spiceGradeId,
    int skip,
    int take,
    String? sort,
    String? dateFrom,
    String? dateTo,
  });
}

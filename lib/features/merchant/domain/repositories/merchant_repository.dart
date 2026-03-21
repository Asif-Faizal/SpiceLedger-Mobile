import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/merchant_entity.dart';

abstract class MerchantRepository {
  Future<Either<Failure, MerchantEntity?>> getMerchantDetails();
  Future<Either<Failure, MerchantEntity>> saveMerchantDetails(MerchantEntity entity);
}

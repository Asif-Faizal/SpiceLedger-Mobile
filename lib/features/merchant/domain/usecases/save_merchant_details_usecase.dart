import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/merchant_entity.dart';
import '../repositories/merchant_repository.dart';

@lazySingleton
class SaveMerchantDetailsUseCase {
  final MerchantRepository repository;

  SaveMerchantDetailsUseCase(this.repository);

  Future<Either<Failure, MerchantEntity>> call(MerchantEntity entity) {
    return repository.saveMerchantDetails(entity);
  }
}

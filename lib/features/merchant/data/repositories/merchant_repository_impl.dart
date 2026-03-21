import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/merchant_entity.dart';
import '../../domain/repositories/merchant_repository.dart';
import '../datasources/merchant_remote_data_source.dart';
import '../models/merchant_model.dart';

@LazySingleton(as: MerchantRepository)
class MerchantRepositoryImpl implements MerchantRepository {
  final MerchantRemoteDataSource remoteDataSource;

  MerchantRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, MerchantEntity?>> getMerchantDetails() async {
    try {
      final model = await remoteDataSource.getMerchantDetails();
      return Right(model?.toEntity());
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MerchantEntity>> saveMerchantDetails(
    MerchantEntity entity,
  ) async {
    try {
      final model = MerchantModel.fromEntity(entity);
      final savedModel = await remoteDataSource.saveMerchantDetails(model);
      return Right(savedModel.toEntity());
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

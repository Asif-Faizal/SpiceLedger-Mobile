import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/merchant_dashboard_entity.dart';
import '../entities/merchant_position_entity.dart';
import '../repositories/merchant_repository.dart';

@injectable
class GetMerchantPositionsUseCase {
  final MerchantRepository repository;

  GetMerchantPositionsUseCase(this.repository);

  Future<Either<Failure, List<MerchantPositionEntity>>> call() async {
    return repository.getPositions();
  }
}

@injectable
class GetMerchantGradePositionUseCase {
  final MerchantRepository repository;

  GetMerchantGradePositionUseCase(this.repository);

  Future<Either<Failure, MerchantPositionEntity>> call(String spiceGradeId) {
    return repository.getGradePosition(spiceGradeId);
  }
}

@injectable
class ListMerchantTransactionsUseCase {
  final MerchantRepository repository;

  ListMerchantTransactionsUseCase(this.repository);

  Future<Either<Failure, List<MerchantTransactionEntity>>> call({
    int skip = 0,
    int take = 20,
  }) {
    return repository.listTransactions(skip: skip, take: take);
  }
}

@injectable
class ListMerchantGradeTransactionsUseCase {
  final MerchantRepository repository;

  ListMerchantGradeTransactionsUseCase(this.repository);

  Future<Either<Failure, List<MerchantTransactionEntity>>> call({
    required String spiceGradeId,
    int skip = 0,
    int take = 20,
  }) {
    return repository.listGradeTransactions(
      spiceGradeId: spiceGradeId,
      skip: skip,
      take: take,
    );
  }
}

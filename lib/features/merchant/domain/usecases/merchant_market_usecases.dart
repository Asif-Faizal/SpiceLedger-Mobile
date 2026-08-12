import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/catalog_entity.dart';
import '../entities/merchant_dashboard_entity.dart';
import '../entities/merchant_position_entity.dart';
import '../repositories/merchant_repository.dart';

@injectable
class GetMerchantProductsUseCase {
  final MerchantRepository repository;

  GetMerchantProductsUseCase(this.repository);

  Future<Either<Failure, List<MerchantProductEntity>>> call({
    String? date,
    String? search,
  }) {
    return repository.getProducts(date: date, search: search);
  }
}

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
    int take = 10,
    String? spiceGradeId,
    String? productId,
    String? sort,
    String? dateFrom,
    String? dateTo,
  }) {
    return repository.listTransactions(
      skip: skip,
      take: take,
      spiceGradeId: spiceGradeId,
      productId: productId,
      sort: sort,
      dateFrom: dateFrom,
      dateTo: dateTo,
    );
  }
}

@injectable
class ListMerchantGradeTransactionsUseCase {
  final MerchantRepository repository;

  ListMerchantGradeTransactionsUseCase(this.repository);

  Future<Either<Failure, List<MerchantTransactionEntity>>> call({
    required String spiceGradeId,
    int skip = 0,
    int take = 10,
    String? sort,
    String? dateFrom,
    String? dateTo,
  }) {
    return repository.listGradeTransactions(
      spiceGradeId: spiceGradeId,
      skip: skip,
      take: take,
      sort: sort,
      dateFrom: dateFrom,
      dateTo: dateTo,
    );
  }
}

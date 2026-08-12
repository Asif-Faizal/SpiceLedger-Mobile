import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/catalog_entity.dart';
import '../../../domain/entities/merchant_dashboard_entity.dart';
import '../../../domain/entities/transaction_filter_entity.dart';

part 'merchant_transactions_state.freezed.dart';

@freezed
class MerchantTransactionsState with _$MerchantTransactionsState {
  const factory MerchantTransactionsState.initial() = _Initial;
  const factory MerchantTransactionsState.loading() = _Loading;
  const factory MerchantTransactionsState.loaded({
    required List<MerchantProductEntity> products,
    required List<MerchantTransactionEntity> allTransactions,
    required List<MerchantTransactionEntity> displayedTransactions,
    required TransactionFilterEntity filter,
    required bool hasMore,
    required bool isLoadingMore,
  }) = _Loaded;
  const factory MerchantTransactionsState.error({required String message}) =
      _Error;
}

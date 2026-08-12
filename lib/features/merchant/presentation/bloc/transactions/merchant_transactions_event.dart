import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/transaction_filter_entity.dart';

part 'merchant_transactions_event.freezed.dart';

@freezed
class MerchantTransactionsEvent with _$MerchantTransactionsEvent {
  const factory MerchantTransactionsEvent.fetch() = _Fetch;
  const factory MerchantTransactionsEvent.applyFilter(
    TransactionFilterEntity filter,
  ) = _ApplyFilter;
  const factory MerchantTransactionsEvent.clearFilter() = _ClearFilter;
  const factory MerchantTransactionsEvent.loadMore() = _LoadMore;
}

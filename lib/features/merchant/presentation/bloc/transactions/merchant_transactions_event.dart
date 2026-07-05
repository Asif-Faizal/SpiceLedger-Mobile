import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_transactions_event.freezed.dart';

@freezed
class MerchantTransactionsEvent with _$MerchantTransactionsEvent {
  const factory MerchantTransactionsEvent.fetch() = _Fetch;
  const factory MerchantTransactionsEvent.filterByGrade(String? spiceGradeId) =
      _FilterByGrade;
  const factory MerchantTransactionsEvent.loadMore() = _LoadMore;
}

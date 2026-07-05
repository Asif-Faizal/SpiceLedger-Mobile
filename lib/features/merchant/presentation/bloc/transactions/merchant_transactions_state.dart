import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/merchant_dashboard_entity.dart';
import '../../../domain/entities/merchant_position_entity.dart';

part 'merchant_transactions_state.freezed.dart';

@freezed
class MerchantTransactionsState with _$MerchantTransactionsState {
  const factory MerchantTransactionsState.initial() = _Initial;
  const factory MerchantTransactionsState.loading() = _Loading;
  const factory MerchantTransactionsState.loaded({
    required List<MerchantTransactionEntity> transactions,
    required List<MerchantPositionEntity> positions,
    String? selectedGradeId,
    required bool hasMore,
    required bool isLoadingMore,
  }) = _Loaded;
  const factory MerchantTransactionsState.error({required String message}) =
      _Error;
}

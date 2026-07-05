import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/merchant_dashboard_entity.dart';

part 'merchant_dashboard_state.freezed.dart';

@freezed
class MerchantDashboardState with _$MerchantDashboardState {
  const factory MerchantDashboardState.initial() = _Initial;
  const factory MerchantDashboardState.loading() = _Loading;
  const factory MerchantDashboardState.loaded({
    required MerchantDashboardEntity dashboard,
    required List<MerchantTransactionEntity> recentTransactions,
    required int days,
  }) = _Loaded;
  const factory MerchantDashboardState.error({
    required String message,
  }) = _Error;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_dashboard_event.freezed.dart';

@freezed
class MerchantDashboardEvent with _$MerchantDashboardEvent {
  const factory MerchantDashboardEvent.fetchDashboard() = _FetchDashboard;
}

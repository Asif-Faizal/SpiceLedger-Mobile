import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_dashboard_event.freezed.dart';

@freezed
class AdminDashboardEvent with _$AdminDashboardEvent {
  const factory AdminDashboardEvent.fetchDashboard() = _FetchDashboard;
}

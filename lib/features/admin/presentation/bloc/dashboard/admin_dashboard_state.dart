import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/dashboard_entity.dart';

part 'admin_dashboard_state.freezed.dart';

@freezed
class AdminDashboardState with _$AdminDashboardState {
  const factory AdminDashboardState.initial() = _Initial;
  const factory AdminDashboardState.loading() = _Loading;
  const factory AdminDashboardState.loaded({
    required AdminDashboardEntity dashboard,
  }) = _Loaded;
  const factory AdminDashboardState.error({
    required String message,
  }) = _Error;
}

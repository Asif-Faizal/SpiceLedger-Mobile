import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardUsersSummary with _$DashboardUsersSummary {
  const factory DashboardUsersSummary({
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'weekly_new') required int weeklyNew,
    @JsonKey(name: 'weekly_change_pct') required double weeklyChangePct,
    @JsonKey(name: 'monthly_change_pct') required double monthlyChangePct,
  }) = _DashboardUsersSummary;

  factory DashboardUsersSummary.fromJson(Map<String, dynamic> json) =>
      _$DashboardUsersSummaryFromJson(json);
}

@freezed
class DashboardProductsSummary with _$DashboardProductsSummary {
  const factory DashboardProductsSummary({
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'monthly_change_pct') required double monthlyChangePct,
  }) = _DashboardProductsSummary;

  factory DashboardProductsSummary.fromJson(Map<String, dynamic> json) =>
      _$DashboardProductsSummaryFromJson(json);
}

@freezed
class DashboardGradesSummary with _$DashboardGradesSummary {
  const factory DashboardGradesSummary({
    @JsonKey(name: 'total') required int total,
  }) = _DashboardGradesSummary;

  factory DashboardGradesSummary.fromJson(Map<String, dynamic> json) =>
      _$DashboardGradesSummaryFromJson(json);
}

double _doubleOrZero(Object? v) {
  if (v == null) return 0.0;
  if (v is num) return v.toDouble();
  return 0.0;
}

@freezed
class DashboardPriceUpdate with _$DashboardPriceUpdate {
  const factory DashboardPriceUpdate({
    @JsonKey(name: 'date') required String date,
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'product') required String product,
    @JsonKey(name: 'grade_id') required String gradeId,
    @JsonKey(name: 'grade') required String grade,
    @JsonKey(name: 'price', fromJson: _doubleOrZero) required double price,
    @JsonKey(name: 'previous_date') required String previousDate,
    @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)
    required double previousPrice,
    @JsonKey(name: 'change_delta', fromJson: _doubleOrZero)
    required double changeDelta,
    @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)
    required double changePercent,
  }) = _DashboardPriceUpdate;

  factory DashboardPriceUpdate.fromJson(Map<String, dynamic> json) =>
      _$DashboardPriceUpdateFromJson(json);
}

@freezed
class DashboardResponse with _$DashboardResponse {
  const factory DashboardResponse({
    @JsonKey(name: 'date') required String date,
    @JsonKey(name: 'users') required DashboardUsersSummary users,
    @JsonKey(name: 'products') required DashboardProductsSummary products,
    @JsonKey(name: 'grades') required DashboardGradesSummary grades,
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'price_updates') required List<DashboardPriceUpdate> priceUpdates,
  }) = _DashboardResponse;

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseFromJson(json);
}

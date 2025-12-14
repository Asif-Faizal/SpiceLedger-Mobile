import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_price_model.freezed.dart';
part 'daily_price_model.g.dart';

@freezed
class DailyPriceItem with _$DailyPriceItem {
  const factory DailyPriceItem({
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'grade_id') required String gradeId,
    @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero) required double pricePerKg,
  }) = _DailyPriceItem;

  factory DailyPriceItem.fromJson(Map<String, dynamic> json) =>
      _$DailyPriceItemFromJson(json);
}

@freezed
class DailyPricesResponse with _$DailyPricesResponse {
  const factory DailyPricesResponse({
    required String date,
    List<DailyPriceItem>? prices,
  }) = _DailyPricesResponse;

  factory DailyPricesResponse.fromJson(Map<String, dynamic> json) =>
      _$DailyPricesResponseFromJson(json);
}

double _doubleOrZero(Object? v) {
  if (v == null) return 0.0;
  if (v is num) return v.toDouble();
  return 0.0;
}

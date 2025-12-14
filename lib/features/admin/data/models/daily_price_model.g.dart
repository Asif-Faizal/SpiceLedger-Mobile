// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyPriceItemImpl _$$DailyPriceItemImplFromJson(Map<String, dynamic> json) =>
    _$DailyPriceItemImpl(
      productId: json['product_id'] as String,
      gradeId: json['grade_id'] as String,
      pricePerKg: _doubleOrZero(json['price_per_kg']),
    );

Map<String, dynamic> _$$DailyPriceItemImplToJson(
  _$DailyPriceItemImpl instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'grade_id': instance.gradeId,
  'price_per_kg': instance.pricePerKg,
};

_$DailyPricesResponseImpl _$$DailyPricesResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DailyPricesResponseImpl(
  date: json['date'] as String,
  prices: (json['prices'] as List<dynamic>?)
      ?.map((e) => DailyPriceItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$DailyPricesResponseImplToJson(
  _$DailyPricesResponseImpl instance,
) => <String, dynamic>{'date': instance.date, 'prices': instance.prices};

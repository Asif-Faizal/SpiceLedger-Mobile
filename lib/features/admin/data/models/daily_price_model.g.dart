// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyPriceItem _$DailyPriceItemFromJson(Map<String, dynamic> json) =>
    _DailyPriceItem(
      productId: json['product_id'] as String,
      gradeId: json['grade_id'] as String,
      pricePerKg: _doubleOrZero(json['price_per_kg']),
    );

Map<String, dynamic> _$DailyPriceItemToJson(_DailyPriceItem instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'grade_id': instance.gradeId,
      'price_per_kg': instance.pricePerKg,
    };

_DailyPricesResponse _$DailyPricesResponseFromJson(Map<String, dynamic> json) =>
    _DailyPricesResponse(
      date: json['date'] as String,
      prices: (json['prices'] as List<dynamic>?)
          ?.map((e) => DailyPriceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DailyPricesResponseToJson(
  _DailyPricesResponse instance,
) => <String, dynamic>{'date': instance.date, 'prices': instance.prices};

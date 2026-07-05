// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MerchantPositionModel _$MerchantPositionModelFromJson(
  Map<String, dynamic> json,
) => _MerchantPositionModel(
  userId: json['userId'] as String,
  spiceGradeId: json['spiceGradeId'] as String,
  totalQty: (json['totalQty'] as num).toDouble(),
  totalCost: (json['totalCost'] as num).toDouble(),
  avgCost: (json['avgCost'] as num).toDouble(),
  todayPrice: (json['todayPrice'] as num).toDouble(),
  realizedPnL: (json['realizedPnL'] as num).toDouble(),
  unrealizedPnL: (json['unrealizedPnL'] as num).toDouble(),
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$MerchantPositionModelToJson(
  _MerchantPositionModel instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'spiceGradeId': instance.spiceGradeId,
  'totalQty': instance.totalQty,
  'totalCost': instance.totalCost,
  'avgCost': instance.avgCost,
  'todayPrice': instance.todayPrice,
  'realizedPnL': instance.realizedPnL,
  'unrealizedPnL': instance.unrealizedPnL,
  'updatedAt': instance.updatedAt,
};

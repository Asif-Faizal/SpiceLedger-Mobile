// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    _TransactionModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      spiceGradeId: json['spiceGradeId'] as String,
      type: json['type'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      tradeDate: json['tradeDate'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$TransactionModelToJson(_TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'spiceGradeId': instance.spiceGradeId,
      'type': instance.type,
      'quantity': instance.quantity,
      'price': instance.price,
      'tradeDate': instance.tradeDate,
      'createdAt': instance.createdAt,
    };

_TopProductModel _$TopProductModelFromJson(Map<String, dynamic> json) =>
    _TopProductModel(
      name: json['name'] as String,
      volume: (json['volume'] as num).toDouble(),
    );

Map<String, dynamic> _$TopProductModelToJson(_TopProductModel instance) =>
    <String, dynamic>{'name': instance.name, 'volume': instance.volume};

_AdminDashboardModel _$AdminDashboardModelFromJson(Map<String, dynamic> json) =>
    _AdminDashboardModel(
      totalUsers: (json['totalUsers'] as num).toInt(),
      totalProducts: (json['totalProducts'] as num).toInt(),
      totalTransactions: (json['totalTransactions'] as num).toInt(),
      totalVolume: (json['totalVolume'] as num).toDouble(),
      topProducts: (json['topProducts'] as List<dynamic>)
          .map((e) => TopProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentTransactions: (json['recentTransactions'] as List<dynamic>)
          .map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminDashboardModelToJson(
  _AdminDashboardModel instance,
) => <String, dynamic>{
  'totalUsers': instance.totalUsers,
  'totalProducts': instance.totalProducts,
  'totalTransactions': instance.totalTransactions,
  'totalVolume': instance.totalVolume,
  'topProducts': instance.topProducts,
  'recentTransactions': instance.recentTransactions,
};

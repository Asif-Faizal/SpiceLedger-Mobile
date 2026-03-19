// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryModel _$InventoryModelFromJson(Map<String, dynamic> json) =>
    _InventoryModel(
      totalQuantity: _doubleOrZero(json['total_quantity']),
      totalValue: _doubleOrZero(json['total_value']),
      currentPL: _doubleOrZero(json['current_pnl']),
    );

Map<String, dynamic> _$InventoryModelToJson(_InventoryModel instance) =>
    <String, dynamic>{
      'total_quantity': instance.totalQuantity,
      'total_value': instance.totalValue,
      'current_pnl': instance.currentPL,
    };

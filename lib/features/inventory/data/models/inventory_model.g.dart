// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryModelImpl _$$InventoryModelImplFromJson(Map<String, dynamic> json) =>
    _$InventoryModelImpl(
      totalQuantity: _doubleOrZero(json['total_quantity']),
      totalValue: _doubleOrZero(json['total_value']),
      currentPL: _doubleOrZero(json['current_pnl']),
    );

Map<String, dynamic> _$$InventoryModelImplToJson(
  _$InventoryModelImpl instance,
) => <String, dynamic>{
  'total_quantity': instance.totalQuantity,
  'total_value': instance.totalValue,
  'current_pnl': instance.currentPL,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryModelImpl _$$InventoryModelImplFromJson(Map<String, dynamic> json) =>
    _$InventoryModelImpl(
      totalQuantity: (json['total_quantity'] as num).toDouble(),
      totalValue: (json['total_value'] as num).toDouble(),
      currentPL: (json['current_pnl'] as num).toDouble(),
    );

Map<String, dynamic> _$$InventoryModelImplToJson(
  _$InventoryModelImpl instance,
) => <String, dynamic>{
  'total_quantity': instance.totalQuantity,
  'total_value': instance.totalValue,
  'current_pnl': instance.currentPL,
};

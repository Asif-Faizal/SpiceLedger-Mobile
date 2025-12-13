import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/inventory.dart';

part 'inventory_model.freezed.dart';
part 'inventory_model.g.dart';

@freezed
class InventoryModel with _$InventoryModel {
  const factory InventoryModel({
    @JsonKey(name: 'total_quantity') required double totalQuantity,
    @JsonKey(name: 'total_value') required double totalValue,
    @JsonKey(name: 'current_pnl') required double currentPL,
  }) = _InventoryModel;

  factory InventoryModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryModelFromJson(json);
}

extension InventoryModelX on InventoryModel {
  Inventory toEntity() => Inventory(
    totalQuantity: totalQuantity,
    totalValue: totalValue,
    currentPL: currentPL,
  );
}

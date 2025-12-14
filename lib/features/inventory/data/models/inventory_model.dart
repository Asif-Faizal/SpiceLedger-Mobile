import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/inventory.dart';

part 'inventory_model.freezed.dart';
part 'inventory_model.g.dart';

@freezed
class InventoryModel with _$InventoryModel {
  const factory InventoryModel({
    @JsonKey(name: 'total_quantity', fromJson: _doubleOrZero)
        required double totalQuantity,
    @JsonKey(name: 'total_value', fromJson: _doubleOrZero)
        required double totalValue,
    @JsonKey(name: 'current_pnl', fromJson: _doubleOrZero)
        required double currentPL,
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

double _doubleOrZero(Object? v) {
  if (v == null) return 0.0;
  if (v is num) return v.toDouble();
  return 0.0;
}

part of 'inventory_bloc.dart';

@freezed
class InventoryEvent with _$InventoryEvent {
  const factory InventoryEvent.loadData() = _LoadData;
  const factory InventoryEvent.addLot(
    String date,
    String gradeId,
    double quantity,
    double unitCost,
  ) = _AddLot;
  const factory InventoryEvent.addSale(
    String date,
    String gradeId,
    double quantity,
    double unitPrice,
  ) = _AddSale;
}

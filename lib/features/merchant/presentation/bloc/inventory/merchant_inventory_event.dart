import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_inventory_event.freezed.dart';

@freezed
class MerchantInventoryEvent with _$MerchantInventoryEvent {
  const factory MerchantInventoryEvent.fetch() = _Fetch;
}

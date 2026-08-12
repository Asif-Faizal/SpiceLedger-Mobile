import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/inventory_entity.dart';

part 'merchant_inventory_state.freezed.dart';

@freezed
class MerchantInventoryState with _$MerchantInventoryState {
  const factory MerchantInventoryState.initial() = _Initial;
  const factory MerchantInventoryState.loading() = _Loading;
  const factory MerchantInventoryState.loaded({
    required List<InventoryProductItemEntity> items,
  }) = _Loaded;
  const factory MerchantInventoryState.error({required String message}) = _Error;
}

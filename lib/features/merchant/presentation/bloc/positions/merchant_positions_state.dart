import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/merchant_position_entity.dart';

part 'merchant_positions_state.freezed.dart';

@freezed
class MerchantPositionsState with _$MerchantPositionsState {
  const factory MerchantPositionsState.initial() = _Initial;
  const factory MerchantPositionsState.loading() = _Loading;
  const factory MerchantPositionsState.loaded({
    required List<MerchantPositionEntity> positions,
  }) = _Loaded;
  const factory MerchantPositionsState.error({required String message}) = _Error;
}

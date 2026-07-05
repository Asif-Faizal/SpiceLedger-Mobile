import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_positions_event.freezed.dart';

@freezed
class MerchantPositionsEvent with _$MerchantPositionsEvent {
  const factory MerchantPositionsEvent.fetchPositions() = _FetchPositions;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/merchant_entity.dart';

part 'merchant_details_event.freezed.dart';

@freezed
class MerchantDetailsEvent with _$MerchantDetailsEvent {
  const factory MerchantDetailsEvent.fetchRequested() = _FetchRequested;
  const factory MerchantDetailsEvent.saveRequested(MerchantEntity entity) = _SaveRequested;
}

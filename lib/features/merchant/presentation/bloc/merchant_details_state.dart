import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/merchant_entity.dart';

part 'merchant_details_state.freezed.dart';

@freezed
class MerchantDetailsState with _$MerchantDetailsState {
  const factory MerchantDetailsState.initial() = _Initial;
  const factory MerchantDetailsState.loading() = _Loading;
  const factory MerchantDetailsState.success(MerchantEntity details) = _Success;
  const factory MerchantDetailsState.noDetails() = _NoDetails;
  const factory MerchantDetailsState.failure(String message) = _Failure;
  const factory MerchantDetailsState.saveLoading(MerchantEntity? currentDetails) = _SaveLoading;
}

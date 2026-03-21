import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/merchant_entity.dart';

part 'merchant_model.freezed.dart';
part 'merchant_model.g.dart';

@freezed
abstract class MerchantModel with _$MerchantModel {
  const factory MerchantModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'account_id') String? accountId,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    required String address,
    required String city,
    required String state,
    required String pincode,
  }) = _MerchantModel;

  factory MerchantModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantModelFromJson(json);

  factory MerchantModel.fromEntity(MerchantEntity entity) => MerchantModel(
        id: entity.id,
        accountId: entity.accountId,
        phoneNumber: entity.phoneNumber,
        address: entity.address,
        city: entity.city,
        state: entity.state,
        pincode: entity.pincode,
      );
}

extension MerchantModelX on MerchantModel {
  MerchantEntity toEntity() => MerchantEntity(
        id: id ?? '',
        accountId: accountId ?? '',
        phoneNumber: phoneNumber,
        address: address,
        city: city,
        state: state,
        pincode: pincode,
      );
}

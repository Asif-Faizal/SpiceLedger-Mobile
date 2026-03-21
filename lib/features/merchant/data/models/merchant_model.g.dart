// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MerchantModel _$MerchantModelFromJson(Map<String, dynamic> json) =>
    _MerchantModel(
      id: json['id'] as String?,
      accountId: json['account_id'] as String?,
      phoneNumber: json['phone_number'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      pincode: json['pincode'] as String,
    );

Map<String, dynamic> _$MerchantModelToJson(_MerchantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_id': instance.accountId,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
    };

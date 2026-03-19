// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  userType: $enumDecode(_$UserTypeEnumMap, json['user_type']),
  email: json['email'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_type': _$UserTypeEnumMap[instance.userType]!,
      'email': instance.email,
    };

const _$UserTypeEnumMap = {
  UserType.admin: 'admin',
  UserType.merchant: 'merchant',
  UserType.guest: 'guest',
};

_LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    _LoginResponseModel(
      account: UserModel.fromJson(json['account'] as Map<String, dynamic>),
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{
      'account': instance.account,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

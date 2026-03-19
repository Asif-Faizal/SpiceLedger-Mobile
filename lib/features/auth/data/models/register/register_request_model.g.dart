// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRequestModel _$RegisterRequestModelFromJson(
  Map<String, dynamic> json,
) => _RegisterRequestModel(
  name: json['name'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  userType: $enumDecode(_$UserTypeEnumMap, json['user_type']),
);

Map<String, dynamic> _$RegisterRequestModelToJson(
  _RegisterRequestModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'password': instance.password,
  'user_type': _$UserTypeEnumMap[instance.userType]!,
};

const _$UserTypeEnumMap = {
  UserType.admin: 'admin',
  UserType.merchant: 'merchant',
  UserType.guest: 'guest',
};

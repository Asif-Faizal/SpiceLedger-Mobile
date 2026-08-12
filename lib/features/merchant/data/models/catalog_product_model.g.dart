// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MerchantGradeModel _$MerchantGradeModelFromJson(Map<String, dynamic> json) =>
    _MerchantGradeModel(
      id: json['id'] as String,
      productId: json['productId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$MerchantGradeModelToJson(_MerchantGradeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'name': instance.name,
      'description': instance.description,
      'status': instance.status,
      'price': instance.price,
    };

_MerchantProductModel _$MerchantProductModelFromJson(
  Map<String, dynamic> json,
) => _MerchantProductModel(
  id: json['id'] as String,
  name: json['name'] as String,
  category: json['category'] as String,
  description: json['description'] as String,
  status: json['status'] as String,
  grades: (json['grades'] as List<dynamic>)
      .map((e) => MerchantGradeModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MerchantProductModelToJson(
  _MerchantProductModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'category': instance.category,
  'description': instance.description,
  'status': instance.status,
  'grades': instance.grades,
};

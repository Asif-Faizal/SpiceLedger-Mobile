// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GradeModel _$GradeModelFromJson(Map<String, dynamic> json) => _GradeModel(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  productId: json['product_id'] as String?,
);

Map<String, dynamic> _$GradeModelToJson(_GradeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'product_id': instance.productId,
    };

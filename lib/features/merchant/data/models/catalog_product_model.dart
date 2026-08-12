import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/catalog_entity.dart';

part 'catalog_product_model.freezed.dart';
part 'catalog_product_model.g.dart';

@freezed
abstract class MerchantGradeModel with _$MerchantGradeModel {
  const factory MerchantGradeModel({
    required String id,
    @JsonKey(name: 'productId') required String productId,
    required String name,
    required String description,
    required String status,
    required double price,
  }) = _MerchantGradeModel;

  factory MerchantGradeModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantGradeModelFromJson(json);
}

extension MerchantGradeModelX on MerchantGradeModel {
  MerchantGradeEntity toEntity() => MerchantGradeEntity(
        id: id,
        productId: productId,
        name: name,
        description: description,
        status: status,
        price: price,
      );
}

@freezed
abstract class MerchantProductModel with _$MerchantProductModel {
  const factory MerchantProductModel({
    required String id,
    required String name,
    required String category,
    required String description,
    required String status,
    required List<MerchantGradeModel> grades,
  }) = _MerchantProductModel;

  factory MerchantProductModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantProductModelFromJson(json);
}

extension MerchantProductModelX on MerchantProductModel {
  MerchantProductEntity toEntity() => MerchantProductEntity(
        id: id,
        name: name,
        category: category,
        description: description,
        status: status,
        grades: grades.map((g) => g.toEntity()).toList(),
      );
}

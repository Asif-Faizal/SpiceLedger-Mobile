import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class GradeModel with _$GradeModel {
  const factory GradeModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String description,
    @Default('') String status,
    double? price,
  }) = _GradeModel;

  factory GradeModel.fromJson(Map<String, dynamic> json) =>
      _$GradeModelFromJson(json);
}

extension GradeModelX on GradeModel {
  GradeEntity toEntity() {
    return GradeEntity(
      id: id,
      name: name,
      description: description,
      status: status,
      price: price,
    );
  }
}

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String category,
    @Default('') String description,
    @Default('') String status,
    @Default([]) List<GradeModel> grades,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

extension ProductModelX on ProductModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      name: name,
      category: category,
      description: description,
      status: status,
      grades: grades.map((g) => g.toEntity()).toList(),
    );
  }
}

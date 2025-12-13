import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/grade.dart';

part 'grade_model.freezed.dart';
part 'grade_model.g.dart';

@freezed
class GradeModel with _$GradeModel {
  const factory GradeModel({
    required String id,
    required String name,
    required String description,
  }) = _GradeModel;

  factory GradeModel.fromJson(Map<String, dynamic> json) =>
      _$GradeModelFromJson(json);
}

extension GradeModelX on GradeModel {
  Grade toEntity() => Grade(id: id, name: name, description: description);
}

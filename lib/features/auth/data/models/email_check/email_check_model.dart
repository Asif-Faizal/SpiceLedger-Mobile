import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/email_check_entity.dart';

part 'email_check_model.freezed.dart';
part 'email_check_model.g.dart';

@freezed
abstract class EmailCheckModel with _$EmailCheckModel {
  const factory EmailCheckModel({required bool exists}) = _EmailCheckModel;

  factory EmailCheckModel.fromJson(Map<String, dynamic> json) =>
      _$EmailCheckModelFromJson(json);
}

extension EmailCheckModelX on EmailCheckModel {
  EmailCheckEntity toEntity() => EmailCheckEntity(exists: exists);
}

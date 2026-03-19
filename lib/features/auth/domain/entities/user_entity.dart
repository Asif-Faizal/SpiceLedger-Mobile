import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum UserType {
  @JsonValue('admin')
  admin,
  @JsonValue('merchant')
  merchant,
  @JsonValue('guest')
  guest,
}

class UserEntity extends Equatable {
  final String id;
  final String name;
  final UserType userType;
  final String email;

  const UserEntity({
    required this.id,
    required this.name,
    required this.userType,
    required this.email,
  });

  @override
  List<Object?> get props => [id, name, userType, email];
}

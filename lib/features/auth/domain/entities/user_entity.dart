import 'package:equatable/equatable.dart';

import '../../data/models/user/user_model.dart';

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

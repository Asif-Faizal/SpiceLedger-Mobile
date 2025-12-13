import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? token;
  // Add other user fields if needed, for now just token is returned by login
  // But register sends name/email/password.
  // Let's assume on login we get a token.

  const UserEntity({required this.token});

  @override
  List<Object?> get props => [token];
}

import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String token;
  final String refreshToken;
  final bool isAdmin;

  const UserEntity({
    required this.token,
    required this.refreshToken,
    required this.isAdmin,
  });

  @override
  List<Object?> get props => [token, refreshToken, isAdmin];
}

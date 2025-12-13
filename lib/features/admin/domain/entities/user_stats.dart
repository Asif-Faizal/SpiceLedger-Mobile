import 'package:equatable/equatable.dart';

class UserStats extends Equatable {
  final int totalUsers;

  const UserStats({required this.totalUsers});

  @override
  List<Object?> get props => [totalUsers];
}

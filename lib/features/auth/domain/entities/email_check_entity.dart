import 'package:equatable/equatable.dart';

class EmailCheckEntity extends Equatable {
  final bool exists;

  const EmailCheckEntity({required this.exists});

  @override
  List<Object?> get props => [exists];
}

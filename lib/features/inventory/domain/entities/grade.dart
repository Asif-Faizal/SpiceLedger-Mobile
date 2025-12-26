import 'package:equatable/equatable.dart';

class Grade extends Equatable {
  final String id;
  final String name;
  final String description;
  final String? productId;

  const Grade({
    required this.id,
    required this.name,
    required this.description,
    this.productId,
  });

  @override
  List<Object?> get props => [id, name, description, productId];
}

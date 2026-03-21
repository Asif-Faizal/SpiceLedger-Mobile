import 'package:equatable/equatable.dart';

class GradeEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String status;
  final double? price;

  const GradeEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.status,
    this.price,
  });

  @override
  List<Object?> get props => [id, name, description, status, price];
}

class ProductEntity extends Equatable {
  final String id;
  final String name;
  final String category;
  final String description;
  final String status;
  final List<GradeEntity> grades;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.status,
    this.grades = const [],
  });

  @override
  List<Object?> get props => [id, name, category, description, status, grades];
}

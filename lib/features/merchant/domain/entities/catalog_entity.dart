import 'package:equatable/equatable.dart';

class MerchantGradeEntity extends Equatable {
  final String id;
  final String productId;
  final String name;
  final String description;
  final String status;
  final double price;

  const MerchantGradeEntity({
    required this.id,
    required this.productId,
    required this.name,
    required this.description,
    required this.status,
    required this.price,
  });

  @override
  List<Object?> get props => [id, productId, name, description, status, price];
}

class MerchantProductEntity extends Equatable {
  final String id;
  final String name;
  final String category;
  final String description;
  final String status;
  final List<MerchantGradeEntity> grades;

  const MerchantProductEntity({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.status,
    required this.grades,
  });

  @override
  List<Object?> get props => [id, name, category, description, status, grades];
}

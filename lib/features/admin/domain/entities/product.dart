import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final String name;
  final String description;

  const Product({required this.id, required this.name, required this.description});

  @override
  List<Object?> get props => [id, name, description];
}

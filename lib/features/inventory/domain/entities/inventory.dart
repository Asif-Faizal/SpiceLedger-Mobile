import 'package:equatable/equatable.dart';

class Inventory extends Equatable {
  final double totalQuantity;
  final double totalValue;
  final double currentPL;

  const Inventory({
    required this.totalQuantity,
    required this.totalValue,
    required this.currentPL,
  });

  @override
  List<Object?> get props => [totalQuantity, totalValue, currentPL];
}

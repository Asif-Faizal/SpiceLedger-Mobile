import 'package:equatable/equatable.dart';
import 'catalog_entity.dart';
import 'merchant_position_entity.dart';

class InventoryGradeItemEntity extends Equatable {
  final MerchantGradeEntity grade;
  final MerchantPositionEntity? position;

  const InventoryGradeItemEntity({
    required this.grade,
    this.position,
  });

  bool get hasPosition => position != null && position!.totalQty > 0;

  @override
  List<Object?> get props => [grade, position];
}

class InventoryProductItemEntity extends Equatable {
  final MerchantProductEntity product;
  final List<InventoryGradeItemEntity> grades;

  const InventoryProductItemEntity({
    required this.product,
    required this.grades,
  });

  double get totalQuantity =>
      grades.fold(0, (sum, g) => sum + (g.position?.totalQty ?? 0));

  double get totalMarketValue =>
      grades.fold(0, (sum, g) => sum + (g.position?.marketValue ?? 0));

  double get totalUnrealizedPnL => grades.fold(
        0,
        (sum, g) => sum + (g.position?.unrealizedPnL ?? 0),
      );

  int get openGradeCount => grades.where((g) => g.hasPosition).length;

  @override
  List<Object?> get props => [product, grades];
}

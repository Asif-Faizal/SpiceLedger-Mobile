import 'package:equatable/equatable.dart';

class MerchantPositionEntity extends Equatable {
  final String userId;
  final String spiceGradeId;
  final double totalQty;
  final double totalCost;
  final double avgCost;
  final double todayPrice;
  final double realizedPnL;
  final double unrealizedPnL;
  final String updatedAt;

  const MerchantPositionEntity({
    required this.userId,
    required this.spiceGradeId,
    required this.totalQty,
    required this.totalCost,
    required this.avgCost,
    required this.todayPrice,
    required this.realizedPnL,
    required this.unrealizedPnL,
    required this.updatedAt,
  });

  double get marketValue => totalQty * todayPrice;

  @override
  List<Object?> get props => [
        userId,
        spiceGradeId,
        totalQty,
        totalCost,
        avgCost,
        todayPrice,
        realizedPnL,
        unrealizedPnL,
        updatedAt,
      ];
}

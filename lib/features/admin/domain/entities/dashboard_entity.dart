import 'package:equatable/equatable.dart';

class TransactionEntity extends Equatable {
  final String id;
  final String userId;
  final String spiceGradeId;
  final String type;
  final double quantity;
  final double price;
  final String tradeDate;
  final String createdAt;

  const TransactionEntity({
    required this.id,
    required this.userId,
    required this.spiceGradeId,
    required this.type,
    required this.quantity,
    required this.price,
    required this.tradeDate,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        spiceGradeId,
        type,
        quantity,
        price,
        tradeDate,
        createdAt,
      ];
}

class TopProductEntity extends Equatable {
  final String name;
  final double volume;

  const TopProductEntity({
    required this.name,
    required this.volume,
  });

  @override
  List<Object?> get props => [name, volume];
}

class AdminDashboardEntity extends Equatable {
  final int totalUsers;
  final int totalProducts;
  final int totalTransactions;
  final double totalVolume;
  final List<TopProductEntity> topProducts;
  final List<TransactionEntity> recentTransactions;

  const AdminDashboardEntity({
    required this.totalUsers,
    required this.totalProducts,
    required this.totalTransactions,
    required this.totalVolume,
    required this.topProducts,
    required this.recentTransactions,
  });

  @override
  List<Object?> get props => [
        totalUsers,
        totalProducts,
        totalTransactions,
        totalVolume,
        topProducts,
        recentTransactions,
      ];
}

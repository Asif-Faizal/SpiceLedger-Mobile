import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/dashboard_entity.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
abstract class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String id,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'spiceGradeId') required String spiceGradeId,
    required String type,
    required double quantity,
    required double price,
    @JsonKey(name: 'tradeDate') required String tradeDate,
    @JsonKey(name: 'createdAt') required String createdAt,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

extension TransactionModelX on TransactionModel {
  TransactionEntity toEntity() => TransactionEntity(
        id: id,
        userId: userId,
        spiceGradeId: spiceGradeId,
        type: type,
        quantity: quantity,
        price: price,
        tradeDate: tradeDate,
        createdAt: createdAt,
      );
}

@freezed
abstract class TopProductModel with _$TopProductModel {
  const factory TopProductModel({
    required String productName,
    required String gradeName,
    required double volume,
  }) = _TopProductModel;

  factory TopProductModel.fromJson(Map<String, dynamic> json) =>
      _$TopProductModelFromJson(json);
}

extension TopProductModelX on TopProductModel {
  TopProductEntity toEntity() => TopProductEntity(
        productName: productName,
        gradeName: gradeName,
        volume: volume,
      );
}

@freezed
abstract class AdminDashboardModel with _$AdminDashboardModel {
  const factory AdminDashboardModel({
    required int totalUsers,
    required int totalProducts,
    required int totalTransactions,
    required double totalVolume,
    required List<TopProductModel> topProducts,
    required List<TransactionModel> recentTransactions,
  }) = _AdminDashboardModel;

  factory AdminDashboardModel.fromJson(Map<String, dynamic> json) =>
      _$AdminDashboardModelFromJson(json);
}

extension AdminDashboardModelX on AdminDashboardModel {
  AdminDashboardEntity toEntity() => AdminDashboardEntity(
        totalUsers: totalUsers,
        totalProducts: totalProducts,
        totalTransactions: totalTransactions,
        totalVolume: totalVolume,
        topProducts: topProducts.map((p) => p.toEntity()).toList(),
        recentTransactions: recentTransactions.map((t) => t.toEntity()).toList(),
      );
}

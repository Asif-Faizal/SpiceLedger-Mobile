import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/merchant_dashboard_entity.dart';

part 'merchant_dashboard_model.freezed.dart';
part 'merchant_dashboard_model.g.dart';

@freezed
abstract class MerchantDashboardSummaryModel with _$MerchantDashboardSummaryModel {
  const factory MerchantDashboardSummaryModel({
    required double portfolioValue,
    required double totalCost,
    required double totalRealizedPnL,
    required double totalUnrealizedPnL,
    required double netPnL,
    required int openPositions,
    required double totalQuantityKg,
    required int tradesInPeriod,
    required double buyVolumeInPeriod,
    required double sellVolumeInPeriod,
  }) = _MerchantDashboardSummaryModel;

  factory MerchantDashboardSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantDashboardSummaryModelFromJson(json);
}

extension MerchantDashboardSummaryModelX on MerchantDashboardSummaryModel {
  MerchantDashboardSummaryEntity toEntity() => MerchantDashboardSummaryEntity(
        portfolioValue: portfolioValue,
        totalCost: totalCost,
        totalRealizedPnL: totalRealizedPnL,
        totalUnrealizedPnL: totalUnrealizedPnL,
        netPnL: netPnL,
        openPositions: openPositions,
        totalQuantityKg: totalQuantityKg,
        tradesInPeriod: tradesInPeriod,
        buyVolumeInPeriod: buyVolumeInPeriod,
        sellVolumeInPeriod: sellVolumeInPeriod,
      );
}

@freezed
abstract class MerchantHoldingModel with _$MerchantHoldingModel {
  const factory MerchantHoldingModel({
    @JsonKey(name: 'spiceGradeId') required String spiceGradeId,
    required String productName,
    required String gradeName,
    required double quantity,
    required double avgCost,
    required double todayPrice,
    required double marketValue,
    required double costBasis,
    required double unrealizedPnL,
    required double unrealizedPnLPercent,
    required double realizedPnL,
    required int weightPercent,
  }) = _MerchantHoldingModel;

  factory MerchantHoldingModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantHoldingModelFromJson(json);
}

extension MerchantHoldingModelX on MerchantHoldingModel {
  MerchantHoldingEntity toEntity() => MerchantHoldingEntity(
        spiceGradeId: spiceGradeId,
        productName: productName,
        gradeName: gradeName,
        quantity: quantity,
        avgCost: avgCost,
        todayPrice: todayPrice,
        marketValue: marketValue,
        costBasis: costBasis,
        unrealizedPnL: unrealizedPnL,
        unrealizedPnLPercent: unrealizedPnLPercent,
        realizedPnL: realizedPnL,
        weightPercent: weightPercent,
      );
}

@freezed
abstract class PortfolioMixItemModel with _$PortfolioMixItemModel {
  const factory PortfolioMixItemModel({
    required String label,
    required double value,
    required double quantity,
  }) = _PortfolioMixItemModel;

  factory PortfolioMixItemModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioMixItemModelFromJson(json);
}

extension PortfolioMixItemModelX on PortfolioMixItemModel {
  PortfolioMixItemEntity toEntity() => PortfolioMixItemEntity(
        label: label,
        value: value,
        quantity: quantity,
      );
}

@freezed
abstract class PnlTrendPointModel with _$PnlTrendPointModel {
  const factory PnlTrendPointModel({
    required String date,
    required double dailyRealizedPnL,
    required double cumulativeRealizedPnL,
  }) = _PnlTrendPointModel;

  factory PnlTrendPointModel.fromJson(Map<String, dynamic> json) =>
      _$PnlTrendPointModelFromJson(json);
}

extension PnlTrendPointModelX on PnlTrendPointModel {
  PnlTrendPointEntity toEntity() => PnlTrendPointEntity(
        date: date,
        dailyRealizedPnL: dailyRealizedPnL,
        cumulativeRealizedPnL: cumulativeRealizedPnL,
      );
}

@freezed
abstract class ActivityTrendPointModel with _$ActivityTrendPointModel {
  const factory ActivityTrendPointModel({
    required String date,
    required double buyQuantity,
    required double sellQuantity,
    required int buyCount,
    required int sellCount,
  }) = _ActivityTrendPointModel;

  factory ActivityTrendPointModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityTrendPointModelFromJson(json);
}

extension ActivityTrendPointModelX on ActivityTrendPointModel {
  ActivityTrendPointEntity toEntity() => ActivityTrendPointEntity(
        date: date,
        buyQuantity: buyQuantity,
        sellQuantity: sellQuantity,
        buyCount: buyCount,
        sellCount: sellCount,
      );
}

@freezed
abstract class MerchantTransactionModel with _$MerchantTransactionModel {
  const factory MerchantTransactionModel({
    required String id,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'spiceGradeId') required String spiceGradeId,
    required String type,
    required double quantity,
    required double price,
    @JsonKey(name: 'tradeDate') required String tradeDate,
    @JsonKey(name: 'createdAt') required String createdAt,
  }) = _MerchantTransactionModel;

  factory MerchantTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantTransactionModelFromJson(json);
}

extension MerchantTransactionModelX on MerchantTransactionModel {
  MerchantTransactionEntity toEntity() => MerchantTransactionEntity(
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
abstract class MerchantInsightModel with _$MerchantInsightModel {
  const factory MerchantInsightModel({
    required String kind,
    required String title,
    required String body,
    @JsonKey(name: 'spiceGradeId') String? spiceGradeId,
    required String severity,
  }) = _MerchantInsightModel;

  factory MerchantInsightModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantInsightModelFromJson(json);
}

extension MerchantInsightModelX on MerchantInsightModel {
  MerchantInsightEntity toEntity() => MerchantInsightEntity(
        kind: kind,
        title: title,
        body: body,
        spiceGradeId: spiceGradeId,
        severity: severity,
      );
}

@freezed
abstract class MerchantMoverModel with _$MerchantMoverModel {
  const factory MerchantMoverModel({
    @JsonKey(name: 'spiceGradeId') required String spiceGradeId,
    required String productName,
    required String gradeName,
    required double todayPrice,
    required double previousPrice,
    required double changePercent,
    required String direction,
  }) = _MerchantMoverModel;

  factory MerchantMoverModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantMoverModelFromJson(json);
}

extension MerchantMoverModelX on MerchantMoverModel {
  MerchantMoverEntity toEntity() => MerchantMoverEntity(
        spiceGradeId: spiceGradeId,
        productName: productName,
        gradeName: gradeName,
        todayPrice: todayPrice,
        previousPrice: previousPrice,
        changePercent: changePercent,
        direction: direction,
      );
}

@freezed
abstract class MerchantDashboardModel with _$MerchantDashboardModel {
  const factory MerchantDashboardModel({
    required MerchantDashboardSummaryModel summary,
    required List<MerchantHoldingModel> holdings,
    required List<PortfolioMixItemModel> portfolioMix,
    required List<PnlTrendPointModel> pnlTrend,
    required List<ActivityTrendPointModel> activityTrend,
    required List<MerchantTransactionModel> recentTransactions,
    required List<MerchantInsightModel> insights,
    required List<MerchantMoverModel> movers,
  }) = _MerchantDashboardModel;

  factory MerchantDashboardModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantDashboardModelFromJson(json);
}

extension MerchantDashboardModelX on MerchantDashboardModel {
  MerchantDashboardEntity toEntity() => MerchantDashboardEntity(
        summary: summary.toEntity(),
        holdings: holdings.map((h) => h.toEntity()).toList(),
        portfolioMix: portfolioMix.map((p) => p.toEntity()).toList(),
        pnlTrend: pnlTrend.map((p) => p.toEntity()).toList(),
        activityTrend: activityTrend.map((a) => a.toEntity()).toList(),
        recentTransactions:
            recentTransactions.map((t) => t.toEntity()).toList(),
        insights: insights.map((i) => i.toEntity()).toList(),
        movers: movers.map((m) => m.toEntity()).toList(),
      );
}

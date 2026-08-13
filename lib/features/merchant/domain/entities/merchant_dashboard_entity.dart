import 'package:equatable/equatable.dart';

class MerchantDashboardSummaryEntity extends Equatable {
  final double portfolioValue;
  final double totalCost;
  final double totalRealizedPnL;
  final double totalUnrealizedPnL;
  final double netPnL;
  final int openPositions;
  final double totalQuantityKg;
  final int tradesInPeriod;
  final double buyVolumeInPeriod;
  final double sellVolumeInPeriod;

  const MerchantDashboardSummaryEntity({
    required this.portfolioValue,
    required this.totalCost,
    required this.totalRealizedPnL,
    required this.totalUnrealizedPnL,
    required this.netPnL,
    required this.openPositions,
    required this.totalQuantityKg,
    required this.tradesInPeriod,
    required this.buyVolumeInPeriod,
    required this.sellVolumeInPeriod,
  });

  @override
  List<Object?> get props => [
        portfolioValue,
        totalCost,
        totalRealizedPnL,
        totalUnrealizedPnL,
        netPnL,
        openPositions,
        totalQuantityKg,
        tradesInPeriod,
        buyVolumeInPeriod,
        sellVolumeInPeriod,
      ];
}

class MerchantHoldingEntity extends Equatable {
  final String spiceGradeId;
  final String productName;
  final String gradeName;
  final double quantity;
  final double avgCost;
  final double todayPrice;
  final double marketValue;
  final double costBasis;
  final double unrealizedPnL;
  final double unrealizedPnLPercent;
  final double realizedPnL;
  final int weightPercent;

  const MerchantHoldingEntity({
    required this.spiceGradeId,
    required this.productName,
    required this.gradeName,
    required this.quantity,
    required this.avgCost,
    required this.todayPrice,
    required this.marketValue,
    required this.costBasis,
    required this.unrealizedPnL,
    required this.unrealizedPnLPercent,
    required this.realizedPnL,
    required this.weightPercent,
  });

  @override
  List<Object?> get props => [
        spiceGradeId,
        productName,
        gradeName,
        quantity,
        avgCost,
        todayPrice,
        marketValue,
        costBasis,
        unrealizedPnL,
        unrealizedPnLPercent,
        realizedPnL,
        weightPercent,
      ];
}

class PortfolioMixItemEntity extends Equatable {
  final String label;
  final double value;
  final double quantity;

  const PortfolioMixItemEntity({
    required this.label,
    required this.value,
    required this.quantity,
  });

  @override
  List<Object?> get props => [label, value, quantity];
}

class PnlTrendPointEntity extends Equatable {
  final String date;
  final double dailyRealizedPnL;
  final double cumulativeRealizedPnL;
  final List<PnlProductDayEntity> products;

  const PnlTrendPointEntity({
    required this.date,
    required this.dailyRealizedPnL,
    required this.cumulativeRealizedPnL,
    this.products = const [],
  });

  @override
  List<Object?> get props =>
      [date, dailyRealizedPnL, cumulativeRealizedPnL, products];
}

class PnlProductDayEntity extends Equatable {
  final String spiceGradeId;
  final String productName;
  final String gradeName;
  final double realizedPnL;

  const PnlProductDayEntity({
    required this.spiceGradeId,
    required this.productName,
    required this.gradeName,
    required this.realizedPnL,
  });

  @override
  List<Object?> get props => [spiceGradeId, productName, gradeName, realizedPnL];
}

class ActivityTrendPointEntity extends Equatable {
  final String date;
  final double buyQuantity;
  final double sellQuantity;
  final int buyCount;
  final int sellCount;
  final List<ActivityProductDayEntity> products;

  const ActivityTrendPointEntity({
    required this.date,
    required this.buyQuantity,
    required this.sellQuantity,
    required this.buyCount,
    required this.sellCount,
    this.products = const [],
  });

  @override
  List<Object?> get props =>
      [date, buyQuantity, sellQuantity, buyCount, sellCount, products];
}

class ActivityProductDayEntity extends Equatable {
  final String spiceGradeId;
  final String productName;
  final String gradeName;
  final double buyQuantity;
  final double sellQuantity;
  final int buyCount;
  final int sellCount;

  const ActivityProductDayEntity({
    required this.spiceGradeId,
    required this.productName,
    required this.gradeName,
    required this.buyQuantity,
    required this.sellQuantity,
    required this.buyCount,
    required this.sellCount,
  });

  @override
  List<Object?> get props => [
        spiceGradeId,
        productName,
        gradeName,
        buyQuantity,
        sellQuantity,
        buyCount,
        sellCount,
      ];
}

class MerchantPnlTrendEntity extends Equatable {
  final int days;
  final double periodRealizedPnL;
  final List<PnlTrendPointEntity> points;

  const MerchantPnlTrendEntity({
    required this.days,
    required this.periodRealizedPnL,
    required this.points,
  });

  @override
  List<Object?> get props => [days, periodRealizedPnL, points];
}

class MerchantActivityTrendEntity extends Equatable {
  final int days;
  final double totalBuyQuantity;
  final double totalSellQuantity;
  final int totalTrades;
  final List<ActivityTrendPointEntity> points;

  const MerchantActivityTrendEntity({
    required this.days,
    required this.totalBuyQuantity,
    required this.totalSellQuantity,
    required this.totalTrades,
    required this.points,
  });

  @override
  List<Object?> get props =>
      [days, totalBuyQuantity, totalSellQuantity, totalTrades, points];
}

class MerchantTransactionEntity extends Equatable {
  final String id;
  final String userId;
  final String spiceGradeId;
  final String type;
  final double quantity;
  final double price;
  final String tradeDate;
  final String createdAt;

  const MerchantTransactionEntity({
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

class MerchantInsightEntity extends Equatable {
  final String kind;
  final String title;
  final String body;
  final String? spiceGradeId;
  final String severity;

  const MerchantInsightEntity({
    required this.kind,
    required this.title,
    required this.body,
    required this.spiceGradeId,
    required this.severity,
  });

  @override
  List<Object?> get props => [kind, title, body, spiceGradeId, severity];
}

class MerchantMoverEntity extends Equatable {
  final String spiceGradeId;
  final String productName;
  final String gradeName;
  final double todayPrice;
  final double previousPrice;
  final double changePercent;
  final String direction;

  const MerchantMoverEntity({
    required this.spiceGradeId,
    required this.productName,
    required this.gradeName,
    required this.todayPrice,
    required this.previousPrice,
    required this.changePercent,
    required this.direction,
  });

  @override
  List<Object?> get props => [
        spiceGradeId,
        productName,
        gradeName,
        todayPrice,
        previousPrice,
        changePercent,
        direction,
      ];
}

class MerchantDashboardEntity extends Equatable {
  final MerchantDashboardSummaryEntity summary;
  final List<MerchantHoldingEntity> holdings;
  final List<PortfolioMixItemEntity> portfolioMix;
  final List<PnlTrendPointEntity> pnlTrend;
  final List<ActivityTrendPointEntity> activityTrend;
  final List<MerchantTransactionEntity> recentTransactions;
  final List<MerchantInsightEntity> insights;
  final List<MerchantMoverEntity> movers;

  const MerchantDashboardEntity({
    required this.summary,
    required this.holdings,
    required this.portfolioMix,
    required this.pnlTrend,
    required this.activityTrend,
    required this.recentTransactions,
    required this.insights,
    required this.movers,
  });

  @override
  List<Object?> get props => [
        summary,
        holdings,
        portfolioMix,
        pnlTrend,
        activityTrend,
        recentTransactions,
        insights,
        movers,
      ];
}

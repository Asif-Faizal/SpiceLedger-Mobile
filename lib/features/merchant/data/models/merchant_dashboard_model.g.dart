// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MerchantDashboardSummaryModel _$MerchantDashboardSummaryModelFromJson(
  Map<String, dynamic> json,
) => _MerchantDashboardSummaryModel(
  portfolioValue: (json['portfolioValue'] as num).toDouble(),
  totalCost: (json['totalCost'] as num).toDouble(),
  totalRealizedPnL: (json['totalRealizedPnL'] as num).toDouble(),
  totalUnrealizedPnL: (json['totalUnrealizedPnL'] as num).toDouble(),
  netPnL: (json['netPnL'] as num).toDouble(),
  openPositions: (json['openPositions'] as num).toInt(),
  totalQuantityKg: (json['totalQuantityKg'] as num).toDouble(),
  tradesInPeriod: (json['tradesInPeriod'] as num).toInt(),
  buyVolumeInPeriod: (json['buyVolumeInPeriod'] as num).toDouble(),
  sellVolumeInPeriod: (json['sellVolumeInPeriod'] as num).toDouble(),
);

Map<String, dynamic> _$MerchantDashboardSummaryModelToJson(
  _MerchantDashboardSummaryModel instance,
) => <String, dynamic>{
  'portfolioValue': instance.portfolioValue,
  'totalCost': instance.totalCost,
  'totalRealizedPnL': instance.totalRealizedPnL,
  'totalUnrealizedPnL': instance.totalUnrealizedPnL,
  'netPnL': instance.netPnL,
  'openPositions': instance.openPositions,
  'totalQuantityKg': instance.totalQuantityKg,
  'tradesInPeriod': instance.tradesInPeriod,
  'buyVolumeInPeriod': instance.buyVolumeInPeriod,
  'sellVolumeInPeriod': instance.sellVolumeInPeriod,
};

_MerchantHoldingModel _$MerchantHoldingModelFromJson(
  Map<String, dynamic> json,
) => _MerchantHoldingModel(
  spiceGradeId: json['spiceGradeId'] as String,
  productName: json['productName'] as String,
  gradeName: json['gradeName'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  avgCost: (json['avgCost'] as num).toDouble(),
  todayPrice: (json['todayPrice'] as num).toDouble(),
  marketValue: (json['marketValue'] as num).toDouble(),
  costBasis: (json['costBasis'] as num).toDouble(),
  unrealizedPnL: (json['unrealizedPnL'] as num).toDouble(),
  unrealizedPnLPercent: (json['unrealizedPnLPercent'] as num).toDouble(),
  realizedPnL: (json['realizedPnL'] as num).toDouble(),
  weightPercent: (json['weightPercent'] as num).toInt(),
);

Map<String, dynamic> _$MerchantHoldingModelToJson(
  _MerchantHoldingModel instance,
) => <String, dynamic>{
  'spiceGradeId': instance.spiceGradeId,
  'productName': instance.productName,
  'gradeName': instance.gradeName,
  'quantity': instance.quantity,
  'avgCost': instance.avgCost,
  'todayPrice': instance.todayPrice,
  'marketValue': instance.marketValue,
  'costBasis': instance.costBasis,
  'unrealizedPnL': instance.unrealizedPnL,
  'unrealizedPnLPercent': instance.unrealizedPnLPercent,
  'realizedPnL': instance.realizedPnL,
  'weightPercent': instance.weightPercent,
};

_PortfolioMixItemModel _$PortfolioMixItemModelFromJson(
  Map<String, dynamic> json,
) => _PortfolioMixItemModel(
  label: json['label'] as String,
  value: (json['value'] as num).toDouble(),
  quantity: (json['quantity'] as num).toDouble(),
);

Map<String, dynamic> _$PortfolioMixItemModelToJson(
  _PortfolioMixItemModel instance,
) => <String, dynamic>{
  'label': instance.label,
  'value': instance.value,
  'quantity': instance.quantity,
};

_PnlTrendPointModel _$PnlTrendPointModelFromJson(Map<String, dynamic> json) =>
    _PnlTrendPointModel(
      date: json['date'] as String,
      dailyRealizedPnL: (json['dailyRealizedPnL'] as num).toDouble(),
      cumulativeRealizedPnL: (json['cumulativeRealizedPnL'] as num).toDouble(),
    );

Map<String, dynamic> _$PnlTrendPointModelToJson(_PnlTrendPointModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'dailyRealizedPnL': instance.dailyRealizedPnL,
      'cumulativeRealizedPnL': instance.cumulativeRealizedPnL,
    };

_ActivityTrendPointModel _$ActivityTrendPointModelFromJson(
  Map<String, dynamic> json,
) => _ActivityTrendPointModel(
  date: json['date'] as String,
  buyQuantity: (json['buyQuantity'] as num).toDouble(),
  sellQuantity: (json['sellQuantity'] as num).toDouble(),
  buyCount: (json['buyCount'] as num).toInt(),
  sellCount: (json['sellCount'] as num).toInt(),
);

Map<String, dynamic> _$ActivityTrendPointModelToJson(
  _ActivityTrendPointModel instance,
) => <String, dynamic>{
  'date': instance.date,
  'buyQuantity': instance.buyQuantity,
  'sellQuantity': instance.sellQuantity,
  'buyCount': instance.buyCount,
  'sellCount': instance.sellCount,
};

_MerchantTransactionModel _$MerchantTransactionModelFromJson(
  Map<String, dynamic> json,
) => _MerchantTransactionModel(
  id: json['id'] as String,
  userId: json['userId'] as String,
  spiceGradeId: json['spiceGradeId'] as String,
  type: json['type'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
  tradeDate: json['tradeDate'] as String,
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$MerchantTransactionModelToJson(
  _MerchantTransactionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'spiceGradeId': instance.spiceGradeId,
  'type': instance.type,
  'quantity': instance.quantity,
  'price': instance.price,
  'tradeDate': instance.tradeDate,
  'createdAt': instance.createdAt,
};

_MerchantInsightModel _$MerchantInsightModelFromJson(
  Map<String, dynamic> json,
) => _MerchantInsightModel(
  kind: json['kind'] as String,
  title: json['title'] as String,
  body: json['body'] as String,
  spiceGradeId: json['spiceGradeId'] as String?,
  severity: json['severity'] as String,
);

Map<String, dynamic> _$MerchantInsightModelToJson(
  _MerchantInsightModel instance,
) => <String, dynamic>{
  'kind': instance.kind,
  'title': instance.title,
  'body': instance.body,
  'spiceGradeId': instance.spiceGradeId,
  'severity': instance.severity,
};

_MerchantMoverModel _$MerchantMoverModelFromJson(Map<String, dynamic> json) =>
    _MerchantMoverModel(
      spiceGradeId: json['spiceGradeId'] as String,
      productName: json['productName'] as String,
      gradeName: json['gradeName'] as String,
      todayPrice: (json['todayPrice'] as num).toDouble(),
      previousPrice: (json['previousPrice'] as num).toDouble(),
      changePercent: (json['changePercent'] as num).toDouble(),
      direction: json['direction'] as String,
    );

Map<String, dynamic> _$MerchantMoverModelToJson(_MerchantMoverModel instance) =>
    <String, dynamic>{
      'spiceGradeId': instance.spiceGradeId,
      'productName': instance.productName,
      'gradeName': instance.gradeName,
      'todayPrice': instance.todayPrice,
      'previousPrice': instance.previousPrice,
      'changePercent': instance.changePercent,
      'direction': instance.direction,
    };

_MerchantDashboardModel _$MerchantDashboardModelFromJson(
  Map<String, dynamic> json,
) => _MerchantDashboardModel(
  summary: MerchantDashboardSummaryModel.fromJson(
    json['summary'] as Map<String, dynamic>,
  ),
  holdings: (json['holdings'] as List<dynamic>)
      .map((e) => MerchantHoldingModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  portfolioMix: (json['portfolioMix'] as List<dynamic>)
      .map((e) => PortfolioMixItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  pnlTrend: (json['pnlTrend'] as List<dynamic>)
      .map((e) => PnlTrendPointModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  activityTrend: (json['activityTrend'] as List<dynamic>)
      .map((e) => ActivityTrendPointModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  recentTransactions: (json['recentTransactions'] as List<dynamic>)
      .map((e) => MerchantTransactionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  insights: (json['insights'] as List<dynamic>)
      .map((e) => MerchantInsightModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  movers: (json['movers'] as List<dynamic>)
      .map((e) => MerchantMoverModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MerchantDashboardModelToJson(
  _MerchantDashboardModel instance,
) => <String, dynamic>{
  'summary': instance.summary,
  'holdings': instance.holdings,
  'portfolioMix': instance.portfolioMix,
  'pnlTrend': instance.pnlTrend,
  'activityTrend': instance.activityTrend,
  'recentTransactions': instance.recentTransactions,
  'insights': instance.insights,
  'movers': instance.movers,
};

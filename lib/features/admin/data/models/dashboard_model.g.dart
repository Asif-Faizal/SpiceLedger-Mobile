// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardUsersSummaryImpl _$$DashboardUsersSummaryImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardUsersSummaryImpl(
  total: (json['total'] as num).toInt(),
  weeklyNew: (json['weekly_new'] as num).toInt(),
  weeklyChangePct: (json['weekly_change_pct'] as num).toDouble(),
  monthlyChangePct: (json['monthly_change_pct'] as num).toDouble(),
);

Map<String, dynamic> _$$DashboardUsersSummaryImplToJson(
  _$DashboardUsersSummaryImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'weekly_new': instance.weeklyNew,
  'weekly_change_pct': instance.weeklyChangePct,
  'monthly_change_pct': instance.monthlyChangePct,
};

_$DashboardProductsSummaryImpl _$$DashboardProductsSummaryImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardProductsSummaryImpl(
  total: (json['total'] as num).toInt(),
  monthlyChangePct: (json['monthly_change_pct'] as num).toDouble(),
);

Map<String, dynamic> _$$DashboardProductsSummaryImplToJson(
  _$DashboardProductsSummaryImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'monthly_change_pct': instance.monthlyChangePct,
};

_$DashboardGradesSummaryImpl _$$DashboardGradesSummaryImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardGradesSummaryImpl(total: (json['total'] as num).toInt());

Map<String, dynamic> _$$DashboardGradesSummaryImplToJson(
  _$DashboardGradesSummaryImpl instance,
) => <String, dynamic>{'total': instance.total};

_$DashboardPriceUpdateImpl _$$DashboardPriceUpdateImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardPriceUpdateImpl(
  date: json['date'] as String,
  productId: json['product_id'] as String,
  product: json['product'] as String,
  gradeId: json['grade_id'] as String,
  grade: json['grade'] as String,
  price: _doubleOrZero(json['price']),
  previousDate: json['previous_date'] as String,
  previousPrice: _doubleOrZero(json['previous_price']),
  changeDelta: _doubleOrZero(json['change_delta']),
  changePercent: _doubleOrZero(json['change_percent']),
);

Map<String, dynamic> _$$DashboardPriceUpdateImplToJson(
  _$DashboardPriceUpdateImpl instance,
) => <String, dynamic>{
  'date': instance.date,
  'product_id': instance.productId,
  'product': instance.product,
  'grade_id': instance.gradeId,
  'grade': instance.grade,
  'price': instance.price,
  'previous_date': instance.previousDate,
  'previous_price': instance.previousPrice,
  'change_delta': instance.changeDelta,
  'change_percent': instance.changePercent,
};

_$DashboardResponseImpl _$$DashboardResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardResponseImpl(
  date: json['date'] as String,
  users: DashboardUsersSummary.fromJson(json['users'] as Map<String, dynamic>),
  products: DashboardProductsSummary.fromJson(
    json['products'] as Map<String, dynamic>,
  ),
  grades: DashboardGradesSummary.fromJson(
    json['grades'] as Map<String, dynamic>,
  ),
  totalItems: (json['total_items'] as num).toInt(),
  priceUpdates: (json['price_updates'] as List<dynamic>)
      .map((e) => DashboardPriceUpdate.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$DashboardResponseImplToJson(
  _$DashboardResponseImpl instance,
) => <String, dynamic>{
  'date': instance.date,
  'users': instance.users,
  'products': instance.products,
  'grades': instance.grades,
  'total_items': instance.totalItems,
  'price_updates': instance.priceUpdates,
};

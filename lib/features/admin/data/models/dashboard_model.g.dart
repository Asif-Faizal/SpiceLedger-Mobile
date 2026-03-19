// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardUsersSummary _$DashboardUsersSummaryFromJson(
  Map<String, dynamic> json,
) => _DashboardUsersSummary(
  total: (json['total'] as num).toInt(),
  weeklyNew: (json['weekly_new'] as num).toInt(),
  weeklyChangePct: (json['weekly_change_pct'] as num).toDouble(),
  monthlyChangePct: (json['monthly_change_pct'] as num).toDouble(),
);

Map<String, dynamic> _$DashboardUsersSummaryToJson(
  _DashboardUsersSummary instance,
) => <String, dynamic>{
  'total': instance.total,
  'weekly_new': instance.weeklyNew,
  'weekly_change_pct': instance.weeklyChangePct,
  'monthly_change_pct': instance.monthlyChangePct,
};

_DashboardProductsSummary _$DashboardProductsSummaryFromJson(
  Map<String, dynamic> json,
) => _DashboardProductsSummary(
  total: (json['total'] as num).toInt(),
  monthlyChangePct: (json['monthly_change_pct'] as num).toDouble(),
);

Map<String, dynamic> _$DashboardProductsSummaryToJson(
  _DashboardProductsSummary instance,
) => <String, dynamic>{
  'total': instance.total,
  'monthly_change_pct': instance.monthlyChangePct,
};

_DashboardGradesSummary _$DashboardGradesSummaryFromJson(
  Map<String, dynamic> json,
) => _DashboardGradesSummary(total: (json['total'] as num).toInt());

Map<String, dynamic> _$DashboardGradesSummaryToJson(
  _DashboardGradesSummary instance,
) => <String, dynamic>{'total': instance.total};

_DashboardPriceUpdate _$DashboardPriceUpdateFromJson(
  Map<String, dynamic> json,
) => _DashboardPriceUpdate(
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

Map<String, dynamic> _$DashboardPriceUpdateToJson(
  _DashboardPriceUpdate instance,
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

_DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) =>
    _DashboardResponse(
      date: json['date'] as String,
      users: DashboardUsersSummary.fromJson(
        json['users'] as Map<String, dynamic>,
      ),
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

Map<String, dynamic> _$DashboardResponseToJson(_DashboardResponse instance) =>
    <String, dynamic>{
      'date': instance.date,
      'users': instance.users,
      'products': instance.products,
      'grades': instance.grades,
      'total_items': instance.totalItems,
      'price_updates': instance.priceUpdates,
    };

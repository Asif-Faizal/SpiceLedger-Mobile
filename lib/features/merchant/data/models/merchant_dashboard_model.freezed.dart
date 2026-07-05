// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MerchantDashboardSummaryModel {

 double get portfolioValue; double get totalCost; double get totalRealizedPnL; double get totalUnrealizedPnL; double get netPnL; int get openPositions; double get totalQuantityKg; int get tradesInPeriod; double get buyVolumeInPeriod; double get sellVolumeInPeriod;
/// Create a copy of MerchantDashboardSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantDashboardSummaryModelCopyWith<MerchantDashboardSummaryModel> get copyWith => _$MerchantDashboardSummaryModelCopyWithImpl<MerchantDashboardSummaryModel>(this as MerchantDashboardSummaryModel, _$identity);

  /// Serializes this MerchantDashboardSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantDashboardSummaryModel&&(identical(other.portfolioValue, portfolioValue) || other.portfolioValue == portfolioValue)&&(identical(other.totalCost, totalCost) || other.totalCost == totalCost)&&(identical(other.totalRealizedPnL, totalRealizedPnL) || other.totalRealizedPnL == totalRealizedPnL)&&(identical(other.totalUnrealizedPnL, totalUnrealizedPnL) || other.totalUnrealizedPnL == totalUnrealizedPnL)&&(identical(other.netPnL, netPnL) || other.netPnL == netPnL)&&(identical(other.openPositions, openPositions) || other.openPositions == openPositions)&&(identical(other.totalQuantityKg, totalQuantityKg) || other.totalQuantityKg == totalQuantityKg)&&(identical(other.tradesInPeriod, tradesInPeriod) || other.tradesInPeriod == tradesInPeriod)&&(identical(other.buyVolumeInPeriod, buyVolumeInPeriod) || other.buyVolumeInPeriod == buyVolumeInPeriod)&&(identical(other.sellVolumeInPeriod, sellVolumeInPeriod) || other.sellVolumeInPeriod == sellVolumeInPeriod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,portfolioValue,totalCost,totalRealizedPnL,totalUnrealizedPnL,netPnL,openPositions,totalQuantityKg,tradesInPeriod,buyVolumeInPeriod,sellVolumeInPeriod);

@override
String toString() {
  return 'MerchantDashboardSummaryModel(portfolioValue: $portfolioValue, totalCost: $totalCost, totalRealizedPnL: $totalRealizedPnL, totalUnrealizedPnL: $totalUnrealizedPnL, netPnL: $netPnL, openPositions: $openPositions, totalQuantityKg: $totalQuantityKg, tradesInPeriod: $tradesInPeriod, buyVolumeInPeriod: $buyVolumeInPeriod, sellVolumeInPeriod: $sellVolumeInPeriod)';
}


}

/// @nodoc
abstract mixin class $MerchantDashboardSummaryModelCopyWith<$Res>  {
  factory $MerchantDashboardSummaryModelCopyWith(MerchantDashboardSummaryModel value, $Res Function(MerchantDashboardSummaryModel) _then) = _$MerchantDashboardSummaryModelCopyWithImpl;
@useResult
$Res call({
 double portfolioValue, double totalCost, double totalRealizedPnL, double totalUnrealizedPnL, double netPnL, int openPositions, double totalQuantityKg, int tradesInPeriod, double buyVolumeInPeriod, double sellVolumeInPeriod
});




}
/// @nodoc
class _$MerchantDashboardSummaryModelCopyWithImpl<$Res>
    implements $MerchantDashboardSummaryModelCopyWith<$Res> {
  _$MerchantDashboardSummaryModelCopyWithImpl(this._self, this._then);

  final MerchantDashboardSummaryModel _self;
  final $Res Function(MerchantDashboardSummaryModel) _then;

/// Create a copy of MerchantDashboardSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? portfolioValue = null,Object? totalCost = null,Object? totalRealizedPnL = null,Object? totalUnrealizedPnL = null,Object? netPnL = null,Object? openPositions = null,Object? totalQuantityKg = null,Object? tradesInPeriod = null,Object? buyVolumeInPeriod = null,Object? sellVolumeInPeriod = null,}) {
  return _then(_self.copyWith(
portfolioValue: null == portfolioValue ? _self.portfolioValue : portfolioValue // ignore: cast_nullable_to_non_nullable
as double,totalCost: null == totalCost ? _self.totalCost : totalCost // ignore: cast_nullable_to_non_nullable
as double,totalRealizedPnL: null == totalRealizedPnL ? _self.totalRealizedPnL : totalRealizedPnL // ignore: cast_nullable_to_non_nullable
as double,totalUnrealizedPnL: null == totalUnrealizedPnL ? _self.totalUnrealizedPnL : totalUnrealizedPnL // ignore: cast_nullable_to_non_nullable
as double,netPnL: null == netPnL ? _self.netPnL : netPnL // ignore: cast_nullable_to_non_nullable
as double,openPositions: null == openPositions ? _self.openPositions : openPositions // ignore: cast_nullable_to_non_nullable
as int,totalQuantityKg: null == totalQuantityKg ? _self.totalQuantityKg : totalQuantityKg // ignore: cast_nullable_to_non_nullable
as double,tradesInPeriod: null == tradesInPeriod ? _self.tradesInPeriod : tradesInPeriod // ignore: cast_nullable_to_non_nullable
as int,buyVolumeInPeriod: null == buyVolumeInPeriod ? _self.buyVolumeInPeriod : buyVolumeInPeriod // ignore: cast_nullable_to_non_nullable
as double,sellVolumeInPeriod: null == sellVolumeInPeriod ? _self.sellVolumeInPeriod : sellVolumeInPeriod // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantDashboardSummaryModel].
extension MerchantDashboardSummaryModelPatterns on MerchantDashboardSummaryModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantDashboardSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantDashboardSummaryModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantDashboardSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantDashboardSummaryModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantDashboardSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantDashboardSummaryModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double portfolioValue,  double totalCost,  double totalRealizedPnL,  double totalUnrealizedPnL,  double netPnL,  int openPositions,  double totalQuantityKg,  int tradesInPeriod,  double buyVolumeInPeriod,  double sellVolumeInPeriod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantDashboardSummaryModel() when $default != null:
return $default(_that.portfolioValue,_that.totalCost,_that.totalRealizedPnL,_that.totalUnrealizedPnL,_that.netPnL,_that.openPositions,_that.totalQuantityKg,_that.tradesInPeriod,_that.buyVolumeInPeriod,_that.sellVolumeInPeriod);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double portfolioValue,  double totalCost,  double totalRealizedPnL,  double totalUnrealizedPnL,  double netPnL,  int openPositions,  double totalQuantityKg,  int tradesInPeriod,  double buyVolumeInPeriod,  double sellVolumeInPeriod)  $default,) {final _that = this;
switch (_that) {
case _MerchantDashboardSummaryModel():
return $default(_that.portfolioValue,_that.totalCost,_that.totalRealizedPnL,_that.totalUnrealizedPnL,_that.netPnL,_that.openPositions,_that.totalQuantityKg,_that.tradesInPeriod,_that.buyVolumeInPeriod,_that.sellVolumeInPeriod);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double portfolioValue,  double totalCost,  double totalRealizedPnL,  double totalUnrealizedPnL,  double netPnL,  int openPositions,  double totalQuantityKg,  int tradesInPeriod,  double buyVolumeInPeriod,  double sellVolumeInPeriod)?  $default,) {final _that = this;
switch (_that) {
case _MerchantDashboardSummaryModel() when $default != null:
return $default(_that.portfolioValue,_that.totalCost,_that.totalRealizedPnL,_that.totalUnrealizedPnL,_that.netPnL,_that.openPositions,_that.totalQuantityKg,_that.tradesInPeriod,_that.buyVolumeInPeriod,_that.sellVolumeInPeriod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantDashboardSummaryModel implements MerchantDashboardSummaryModel {
  const _MerchantDashboardSummaryModel({required this.portfolioValue, required this.totalCost, required this.totalRealizedPnL, required this.totalUnrealizedPnL, required this.netPnL, required this.openPositions, required this.totalQuantityKg, required this.tradesInPeriod, required this.buyVolumeInPeriod, required this.sellVolumeInPeriod});
  factory _MerchantDashboardSummaryModel.fromJson(Map<String, dynamic> json) => _$MerchantDashboardSummaryModelFromJson(json);

@override final  double portfolioValue;
@override final  double totalCost;
@override final  double totalRealizedPnL;
@override final  double totalUnrealizedPnL;
@override final  double netPnL;
@override final  int openPositions;
@override final  double totalQuantityKg;
@override final  int tradesInPeriod;
@override final  double buyVolumeInPeriod;
@override final  double sellVolumeInPeriod;

/// Create a copy of MerchantDashboardSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantDashboardSummaryModelCopyWith<_MerchantDashboardSummaryModel> get copyWith => __$MerchantDashboardSummaryModelCopyWithImpl<_MerchantDashboardSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantDashboardSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantDashboardSummaryModel&&(identical(other.portfolioValue, portfolioValue) || other.portfolioValue == portfolioValue)&&(identical(other.totalCost, totalCost) || other.totalCost == totalCost)&&(identical(other.totalRealizedPnL, totalRealizedPnL) || other.totalRealizedPnL == totalRealizedPnL)&&(identical(other.totalUnrealizedPnL, totalUnrealizedPnL) || other.totalUnrealizedPnL == totalUnrealizedPnL)&&(identical(other.netPnL, netPnL) || other.netPnL == netPnL)&&(identical(other.openPositions, openPositions) || other.openPositions == openPositions)&&(identical(other.totalQuantityKg, totalQuantityKg) || other.totalQuantityKg == totalQuantityKg)&&(identical(other.tradesInPeriod, tradesInPeriod) || other.tradesInPeriod == tradesInPeriod)&&(identical(other.buyVolumeInPeriod, buyVolumeInPeriod) || other.buyVolumeInPeriod == buyVolumeInPeriod)&&(identical(other.sellVolumeInPeriod, sellVolumeInPeriod) || other.sellVolumeInPeriod == sellVolumeInPeriod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,portfolioValue,totalCost,totalRealizedPnL,totalUnrealizedPnL,netPnL,openPositions,totalQuantityKg,tradesInPeriod,buyVolumeInPeriod,sellVolumeInPeriod);

@override
String toString() {
  return 'MerchantDashboardSummaryModel(portfolioValue: $portfolioValue, totalCost: $totalCost, totalRealizedPnL: $totalRealizedPnL, totalUnrealizedPnL: $totalUnrealizedPnL, netPnL: $netPnL, openPositions: $openPositions, totalQuantityKg: $totalQuantityKg, tradesInPeriod: $tradesInPeriod, buyVolumeInPeriod: $buyVolumeInPeriod, sellVolumeInPeriod: $sellVolumeInPeriod)';
}


}

/// @nodoc
abstract mixin class _$MerchantDashboardSummaryModelCopyWith<$Res> implements $MerchantDashboardSummaryModelCopyWith<$Res> {
  factory _$MerchantDashboardSummaryModelCopyWith(_MerchantDashboardSummaryModel value, $Res Function(_MerchantDashboardSummaryModel) _then) = __$MerchantDashboardSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 double portfolioValue, double totalCost, double totalRealizedPnL, double totalUnrealizedPnL, double netPnL, int openPositions, double totalQuantityKg, int tradesInPeriod, double buyVolumeInPeriod, double sellVolumeInPeriod
});




}
/// @nodoc
class __$MerchantDashboardSummaryModelCopyWithImpl<$Res>
    implements _$MerchantDashboardSummaryModelCopyWith<$Res> {
  __$MerchantDashboardSummaryModelCopyWithImpl(this._self, this._then);

  final _MerchantDashboardSummaryModel _self;
  final $Res Function(_MerchantDashboardSummaryModel) _then;

/// Create a copy of MerchantDashboardSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? portfolioValue = null,Object? totalCost = null,Object? totalRealizedPnL = null,Object? totalUnrealizedPnL = null,Object? netPnL = null,Object? openPositions = null,Object? totalQuantityKg = null,Object? tradesInPeriod = null,Object? buyVolumeInPeriod = null,Object? sellVolumeInPeriod = null,}) {
  return _then(_MerchantDashboardSummaryModel(
portfolioValue: null == portfolioValue ? _self.portfolioValue : portfolioValue // ignore: cast_nullable_to_non_nullable
as double,totalCost: null == totalCost ? _self.totalCost : totalCost // ignore: cast_nullable_to_non_nullable
as double,totalRealizedPnL: null == totalRealizedPnL ? _self.totalRealizedPnL : totalRealizedPnL // ignore: cast_nullable_to_non_nullable
as double,totalUnrealizedPnL: null == totalUnrealizedPnL ? _self.totalUnrealizedPnL : totalUnrealizedPnL // ignore: cast_nullable_to_non_nullable
as double,netPnL: null == netPnL ? _self.netPnL : netPnL // ignore: cast_nullable_to_non_nullable
as double,openPositions: null == openPositions ? _self.openPositions : openPositions // ignore: cast_nullable_to_non_nullable
as int,totalQuantityKg: null == totalQuantityKg ? _self.totalQuantityKg : totalQuantityKg // ignore: cast_nullable_to_non_nullable
as double,tradesInPeriod: null == tradesInPeriod ? _self.tradesInPeriod : tradesInPeriod // ignore: cast_nullable_to_non_nullable
as int,buyVolumeInPeriod: null == buyVolumeInPeriod ? _self.buyVolumeInPeriod : buyVolumeInPeriod // ignore: cast_nullable_to_non_nullable
as double,sellVolumeInPeriod: null == sellVolumeInPeriod ? _self.sellVolumeInPeriod : sellVolumeInPeriod // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$MerchantHoldingModel {

@JsonKey(name: 'spiceGradeId') String get spiceGradeId; String get productName; String get gradeName; double get quantity; double get avgCost; double get todayPrice; double get marketValue; double get costBasis; double get unrealizedPnL; double get unrealizedPnLPercent; double get realizedPnL; int get weightPercent;
/// Create a copy of MerchantHoldingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantHoldingModelCopyWith<MerchantHoldingModel> get copyWith => _$MerchantHoldingModelCopyWithImpl<MerchantHoldingModel>(this as MerchantHoldingModel, _$identity);

  /// Serializes this MerchantHoldingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantHoldingModel&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.avgCost, avgCost) || other.avgCost == avgCost)&&(identical(other.todayPrice, todayPrice) || other.todayPrice == todayPrice)&&(identical(other.marketValue, marketValue) || other.marketValue == marketValue)&&(identical(other.costBasis, costBasis) || other.costBasis == costBasis)&&(identical(other.unrealizedPnL, unrealizedPnL) || other.unrealizedPnL == unrealizedPnL)&&(identical(other.unrealizedPnLPercent, unrealizedPnLPercent) || other.unrealizedPnLPercent == unrealizedPnLPercent)&&(identical(other.realizedPnL, realizedPnL) || other.realizedPnL == realizedPnL)&&(identical(other.weightPercent, weightPercent) || other.weightPercent == weightPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,spiceGradeId,productName,gradeName,quantity,avgCost,todayPrice,marketValue,costBasis,unrealizedPnL,unrealizedPnLPercent,realizedPnL,weightPercent);

@override
String toString() {
  return 'MerchantHoldingModel(spiceGradeId: $spiceGradeId, productName: $productName, gradeName: $gradeName, quantity: $quantity, avgCost: $avgCost, todayPrice: $todayPrice, marketValue: $marketValue, costBasis: $costBasis, unrealizedPnL: $unrealizedPnL, unrealizedPnLPercent: $unrealizedPnLPercent, realizedPnL: $realizedPnL, weightPercent: $weightPercent)';
}


}

/// @nodoc
abstract mixin class $MerchantHoldingModelCopyWith<$Res>  {
  factory $MerchantHoldingModelCopyWith(MerchantHoldingModel value, $Res Function(MerchantHoldingModel) _then) = _$MerchantHoldingModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'spiceGradeId') String spiceGradeId, String productName, String gradeName, double quantity, double avgCost, double todayPrice, double marketValue, double costBasis, double unrealizedPnL, double unrealizedPnLPercent, double realizedPnL, int weightPercent
});




}
/// @nodoc
class _$MerchantHoldingModelCopyWithImpl<$Res>
    implements $MerchantHoldingModelCopyWith<$Res> {
  _$MerchantHoldingModelCopyWithImpl(this._self, this._then);

  final MerchantHoldingModel _self;
  final $Res Function(MerchantHoldingModel) _then;

/// Create a copy of MerchantHoldingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spiceGradeId = null,Object? productName = null,Object? gradeName = null,Object? quantity = null,Object? avgCost = null,Object? todayPrice = null,Object? marketValue = null,Object? costBasis = null,Object? unrealizedPnL = null,Object? unrealizedPnLPercent = null,Object? realizedPnL = null,Object? weightPercent = null,}) {
  return _then(_self.copyWith(
spiceGradeId: null == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,avgCost: null == avgCost ? _self.avgCost : avgCost // ignore: cast_nullable_to_non_nullable
as double,todayPrice: null == todayPrice ? _self.todayPrice : todayPrice // ignore: cast_nullable_to_non_nullable
as double,marketValue: null == marketValue ? _self.marketValue : marketValue // ignore: cast_nullable_to_non_nullable
as double,costBasis: null == costBasis ? _self.costBasis : costBasis // ignore: cast_nullable_to_non_nullable
as double,unrealizedPnL: null == unrealizedPnL ? _self.unrealizedPnL : unrealizedPnL // ignore: cast_nullable_to_non_nullable
as double,unrealizedPnLPercent: null == unrealizedPnLPercent ? _self.unrealizedPnLPercent : unrealizedPnLPercent // ignore: cast_nullable_to_non_nullable
as double,realizedPnL: null == realizedPnL ? _self.realizedPnL : realizedPnL // ignore: cast_nullable_to_non_nullable
as double,weightPercent: null == weightPercent ? _self.weightPercent : weightPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantHoldingModel].
extension MerchantHoldingModelPatterns on MerchantHoldingModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantHoldingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantHoldingModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantHoldingModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantHoldingModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantHoldingModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantHoldingModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String productName,  String gradeName,  double quantity,  double avgCost,  double todayPrice,  double marketValue,  double costBasis,  double unrealizedPnL,  double unrealizedPnLPercent,  double realizedPnL,  int weightPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantHoldingModel() when $default != null:
return $default(_that.spiceGradeId,_that.productName,_that.gradeName,_that.quantity,_that.avgCost,_that.todayPrice,_that.marketValue,_that.costBasis,_that.unrealizedPnL,_that.unrealizedPnLPercent,_that.realizedPnL,_that.weightPercent);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String productName,  String gradeName,  double quantity,  double avgCost,  double todayPrice,  double marketValue,  double costBasis,  double unrealizedPnL,  double unrealizedPnLPercent,  double realizedPnL,  int weightPercent)  $default,) {final _that = this;
switch (_that) {
case _MerchantHoldingModel():
return $default(_that.spiceGradeId,_that.productName,_that.gradeName,_that.quantity,_that.avgCost,_that.todayPrice,_that.marketValue,_that.costBasis,_that.unrealizedPnL,_that.unrealizedPnLPercent,_that.realizedPnL,_that.weightPercent);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String productName,  String gradeName,  double quantity,  double avgCost,  double todayPrice,  double marketValue,  double costBasis,  double unrealizedPnL,  double unrealizedPnLPercent,  double realizedPnL,  int weightPercent)?  $default,) {final _that = this;
switch (_that) {
case _MerchantHoldingModel() when $default != null:
return $default(_that.spiceGradeId,_that.productName,_that.gradeName,_that.quantity,_that.avgCost,_that.todayPrice,_that.marketValue,_that.costBasis,_that.unrealizedPnL,_that.unrealizedPnLPercent,_that.realizedPnL,_that.weightPercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantHoldingModel implements MerchantHoldingModel {
  const _MerchantHoldingModel({@JsonKey(name: 'spiceGradeId') required this.spiceGradeId, required this.productName, required this.gradeName, required this.quantity, required this.avgCost, required this.todayPrice, required this.marketValue, required this.costBasis, required this.unrealizedPnL, required this.unrealizedPnLPercent, required this.realizedPnL, required this.weightPercent});
  factory _MerchantHoldingModel.fromJson(Map<String, dynamic> json) => _$MerchantHoldingModelFromJson(json);

@override@JsonKey(name: 'spiceGradeId') final  String spiceGradeId;
@override final  String productName;
@override final  String gradeName;
@override final  double quantity;
@override final  double avgCost;
@override final  double todayPrice;
@override final  double marketValue;
@override final  double costBasis;
@override final  double unrealizedPnL;
@override final  double unrealizedPnLPercent;
@override final  double realizedPnL;
@override final  int weightPercent;

/// Create a copy of MerchantHoldingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantHoldingModelCopyWith<_MerchantHoldingModel> get copyWith => __$MerchantHoldingModelCopyWithImpl<_MerchantHoldingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantHoldingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantHoldingModel&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.avgCost, avgCost) || other.avgCost == avgCost)&&(identical(other.todayPrice, todayPrice) || other.todayPrice == todayPrice)&&(identical(other.marketValue, marketValue) || other.marketValue == marketValue)&&(identical(other.costBasis, costBasis) || other.costBasis == costBasis)&&(identical(other.unrealizedPnL, unrealizedPnL) || other.unrealizedPnL == unrealizedPnL)&&(identical(other.unrealizedPnLPercent, unrealizedPnLPercent) || other.unrealizedPnLPercent == unrealizedPnLPercent)&&(identical(other.realizedPnL, realizedPnL) || other.realizedPnL == realizedPnL)&&(identical(other.weightPercent, weightPercent) || other.weightPercent == weightPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,spiceGradeId,productName,gradeName,quantity,avgCost,todayPrice,marketValue,costBasis,unrealizedPnL,unrealizedPnLPercent,realizedPnL,weightPercent);

@override
String toString() {
  return 'MerchantHoldingModel(spiceGradeId: $spiceGradeId, productName: $productName, gradeName: $gradeName, quantity: $quantity, avgCost: $avgCost, todayPrice: $todayPrice, marketValue: $marketValue, costBasis: $costBasis, unrealizedPnL: $unrealizedPnL, unrealizedPnLPercent: $unrealizedPnLPercent, realizedPnL: $realizedPnL, weightPercent: $weightPercent)';
}


}

/// @nodoc
abstract mixin class _$MerchantHoldingModelCopyWith<$Res> implements $MerchantHoldingModelCopyWith<$Res> {
  factory _$MerchantHoldingModelCopyWith(_MerchantHoldingModel value, $Res Function(_MerchantHoldingModel) _then) = __$MerchantHoldingModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'spiceGradeId') String spiceGradeId, String productName, String gradeName, double quantity, double avgCost, double todayPrice, double marketValue, double costBasis, double unrealizedPnL, double unrealizedPnLPercent, double realizedPnL, int weightPercent
});




}
/// @nodoc
class __$MerchantHoldingModelCopyWithImpl<$Res>
    implements _$MerchantHoldingModelCopyWith<$Res> {
  __$MerchantHoldingModelCopyWithImpl(this._self, this._then);

  final _MerchantHoldingModel _self;
  final $Res Function(_MerchantHoldingModel) _then;

/// Create a copy of MerchantHoldingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? spiceGradeId = null,Object? productName = null,Object? gradeName = null,Object? quantity = null,Object? avgCost = null,Object? todayPrice = null,Object? marketValue = null,Object? costBasis = null,Object? unrealizedPnL = null,Object? unrealizedPnLPercent = null,Object? realizedPnL = null,Object? weightPercent = null,}) {
  return _then(_MerchantHoldingModel(
spiceGradeId: null == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,avgCost: null == avgCost ? _self.avgCost : avgCost // ignore: cast_nullable_to_non_nullable
as double,todayPrice: null == todayPrice ? _self.todayPrice : todayPrice // ignore: cast_nullable_to_non_nullable
as double,marketValue: null == marketValue ? _self.marketValue : marketValue // ignore: cast_nullable_to_non_nullable
as double,costBasis: null == costBasis ? _self.costBasis : costBasis // ignore: cast_nullable_to_non_nullable
as double,unrealizedPnL: null == unrealizedPnL ? _self.unrealizedPnL : unrealizedPnL // ignore: cast_nullable_to_non_nullable
as double,unrealizedPnLPercent: null == unrealizedPnLPercent ? _self.unrealizedPnLPercent : unrealizedPnLPercent // ignore: cast_nullable_to_non_nullable
as double,realizedPnL: null == realizedPnL ? _self.realizedPnL : realizedPnL // ignore: cast_nullable_to_non_nullable
as double,weightPercent: null == weightPercent ? _self.weightPercent : weightPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PortfolioMixItemModel {

 String get label; double get value; double get quantity;
/// Create a copy of PortfolioMixItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioMixItemModelCopyWith<PortfolioMixItemModel> get copyWith => _$PortfolioMixItemModelCopyWithImpl<PortfolioMixItemModel>(this as PortfolioMixItemModel, _$identity);

  /// Serializes this PortfolioMixItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioMixItemModel&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value,quantity);

@override
String toString() {
  return 'PortfolioMixItemModel(label: $label, value: $value, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $PortfolioMixItemModelCopyWith<$Res>  {
  factory $PortfolioMixItemModelCopyWith(PortfolioMixItemModel value, $Res Function(PortfolioMixItemModel) _then) = _$PortfolioMixItemModelCopyWithImpl;
@useResult
$Res call({
 String label, double value, double quantity
});




}
/// @nodoc
class _$PortfolioMixItemModelCopyWithImpl<$Res>
    implements $PortfolioMixItemModelCopyWith<$Res> {
  _$PortfolioMixItemModelCopyWithImpl(this._self, this._then);

  final PortfolioMixItemModel _self;
  final $Res Function(PortfolioMixItemModel) _then;

/// Create a copy of PortfolioMixItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PortfolioMixItemModel].
extension PortfolioMixItemModelPatterns on PortfolioMixItemModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioMixItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioMixItemModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioMixItemModel value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioMixItemModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioMixItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioMixItemModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  double value,  double quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioMixItemModel() when $default != null:
return $default(_that.label,_that.value,_that.quantity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  double value,  double quantity)  $default,) {final _that = this;
switch (_that) {
case _PortfolioMixItemModel():
return $default(_that.label,_that.value,_that.quantity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  double value,  double quantity)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioMixItemModel() when $default != null:
return $default(_that.label,_that.value,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PortfolioMixItemModel implements PortfolioMixItemModel {
  const _PortfolioMixItemModel({required this.label, required this.value, required this.quantity});
  factory _PortfolioMixItemModel.fromJson(Map<String, dynamic> json) => _$PortfolioMixItemModelFromJson(json);

@override final  String label;
@override final  double value;
@override final  double quantity;

/// Create a copy of PortfolioMixItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioMixItemModelCopyWith<_PortfolioMixItemModel> get copyWith => __$PortfolioMixItemModelCopyWithImpl<_PortfolioMixItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PortfolioMixItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioMixItemModel&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value,quantity);

@override
String toString() {
  return 'PortfolioMixItemModel(label: $label, value: $value, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$PortfolioMixItemModelCopyWith<$Res> implements $PortfolioMixItemModelCopyWith<$Res> {
  factory _$PortfolioMixItemModelCopyWith(_PortfolioMixItemModel value, $Res Function(_PortfolioMixItemModel) _then) = __$PortfolioMixItemModelCopyWithImpl;
@override @useResult
$Res call({
 String label, double value, double quantity
});




}
/// @nodoc
class __$PortfolioMixItemModelCopyWithImpl<$Res>
    implements _$PortfolioMixItemModelCopyWith<$Res> {
  __$PortfolioMixItemModelCopyWithImpl(this._self, this._then);

  final _PortfolioMixItemModel _self;
  final $Res Function(_PortfolioMixItemModel) _then;

/// Create a copy of PortfolioMixItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = null,Object? quantity = null,}) {
  return _then(_PortfolioMixItemModel(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$PnlTrendPointModel {

 String get date; double get dailyRealizedPnL; double get cumulativeRealizedPnL;
/// Create a copy of PnlTrendPointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PnlTrendPointModelCopyWith<PnlTrendPointModel> get copyWith => _$PnlTrendPointModelCopyWithImpl<PnlTrendPointModel>(this as PnlTrendPointModel, _$identity);

  /// Serializes this PnlTrendPointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PnlTrendPointModel&&(identical(other.date, date) || other.date == date)&&(identical(other.dailyRealizedPnL, dailyRealizedPnL) || other.dailyRealizedPnL == dailyRealizedPnL)&&(identical(other.cumulativeRealizedPnL, cumulativeRealizedPnL) || other.cumulativeRealizedPnL == cumulativeRealizedPnL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,dailyRealizedPnL,cumulativeRealizedPnL);

@override
String toString() {
  return 'PnlTrendPointModel(date: $date, dailyRealizedPnL: $dailyRealizedPnL, cumulativeRealizedPnL: $cumulativeRealizedPnL)';
}


}

/// @nodoc
abstract mixin class $PnlTrendPointModelCopyWith<$Res>  {
  factory $PnlTrendPointModelCopyWith(PnlTrendPointModel value, $Res Function(PnlTrendPointModel) _then) = _$PnlTrendPointModelCopyWithImpl;
@useResult
$Res call({
 String date, double dailyRealizedPnL, double cumulativeRealizedPnL
});




}
/// @nodoc
class _$PnlTrendPointModelCopyWithImpl<$Res>
    implements $PnlTrendPointModelCopyWith<$Res> {
  _$PnlTrendPointModelCopyWithImpl(this._self, this._then);

  final PnlTrendPointModel _self;
  final $Res Function(PnlTrendPointModel) _then;

/// Create a copy of PnlTrendPointModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? dailyRealizedPnL = null,Object? cumulativeRealizedPnL = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,dailyRealizedPnL: null == dailyRealizedPnL ? _self.dailyRealizedPnL : dailyRealizedPnL // ignore: cast_nullable_to_non_nullable
as double,cumulativeRealizedPnL: null == cumulativeRealizedPnL ? _self.cumulativeRealizedPnL : cumulativeRealizedPnL // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PnlTrendPointModel].
extension PnlTrendPointModelPatterns on PnlTrendPointModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PnlTrendPointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PnlTrendPointModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PnlTrendPointModel value)  $default,){
final _that = this;
switch (_that) {
case _PnlTrendPointModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PnlTrendPointModel value)?  $default,){
final _that = this;
switch (_that) {
case _PnlTrendPointModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  double dailyRealizedPnL,  double cumulativeRealizedPnL)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PnlTrendPointModel() when $default != null:
return $default(_that.date,_that.dailyRealizedPnL,_that.cumulativeRealizedPnL);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  double dailyRealizedPnL,  double cumulativeRealizedPnL)  $default,) {final _that = this;
switch (_that) {
case _PnlTrendPointModel():
return $default(_that.date,_that.dailyRealizedPnL,_that.cumulativeRealizedPnL);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  double dailyRealizedPnL,  double cumulativeRealizedPnL)?  $default,) {final _that = this;
switch (_that) {
case _PnlTrendPointModel() when $default != null:
return $default(_that.date,_that.dailyRealizedPnL,_that.cumulativeRealizedPnL);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PnlTrendPointModel implements PnlTrendPointModel {
  const _PnlTrendPointModel({required this.date, required this.dailyRealizedPnL, required this.cumulativeRealizedPnL});
  factory _PnlTrendPointModel.fromJson(Map<String, dynamic> json) => _$PnlTrendPointModelFromJson(json);

@override final  String date;
@override final  double dailyRealizedPnL;
@override final  double cumulativeRealizedPnL;

/// Create a copy of PnlTrendPointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PnlTrendPointModelCopyWith<_PnlTrendPointModel> get copyWith => __$PnlTrendPointModelCopyWithImpl<_PnlTrendPointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PnlTrendPointModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PnlTrendPointModel&&(identical(other.date, date) || other.date == date)&&(identical(other.dailyRealizedPnL, dailyRealizedPnL) || other.dailyRealizedPnL == dailyRealizedPnL)&&(identical(other.cumulativeRealizedPnL, cumulativeRealizedPnL) || other.cumulativeRealizedPnL == cumulativeRealizedPnL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,dailyRealizedPnL,cumulativeRealizedPnL);

@override
String toString() {
  return 'PnlTrendPointModel(date: $date, dailyRealizedPnL: $dailyRealizedPnL, cumulativeRealizedPnL: $cumulativeRealizedPnL)';
}


}

/// @nodoc
abstract mixin class _$PnlTrendPointModelCopyWith<$Res> implements $PnlTrendPointModelCopyWith<$Res> {
  factory _$PnlTrendPointModelCopyWith(_PnlTrendPointModel value, $Res Function(_PnlTrendPointModel) _then) = __$PnlTrendPointModelCopyWithImpl;
@override @useResult
$Res call({
 String date, double dailyRealizedPnL, double cumulativeRealizedPnL
});




}
/// @nodoc
class __$PnlTrendPointModelCopyWithImpl<$Res>
    implements _$PnlTrendPointModelCopyWith<$Res> {
  __$PnlTrendPointModelCopyWithImpl(this._self, this._then);

  final _PnlTrendPointModel _self;
  final $Res Function(_PnlTrendPointModel) _then;

/// Create a copy of PnlTrendPointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? dailyRealizedPnL = null,Object? cumulativeRealizedPnL = null,}) {
  return _then(_PnlTrendPointModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,dailyRealizedPnL: null == dailyRealizedPnL ? _self.dailyRealizedPnL : dailyRealizedPnL // ignore: cast_nullable_to_non_nullable
as double,cumulativeRealizedPnL: null == cumulativeRealizedPnL ? _self.cumulativeRealizedPnL : cumulativeRealizedPnL // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$ActivityTrendPointModel {

 String get date; double get buyQuantity; double get sellQuantity; int get buyCount; int get sellCount;
/// Create a copy of ActivityTrendPointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityTrendPointModelCopyWith<ActivityTrendPointModel> get copyWith => _$ActivityTrendPointModelCopyWithImpl<ActivityTrendPointModel>(this as ActivityTrendPointModel, _$identity);

  /// Serializes this ActivityTrendPointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityTrendPointModel&&(identical(other.date, date) || other.date == date)&&(identical(other.buyQuantity, buyQuantity) || other.buyQuantity == buyQuantity)&&(identical(other.sellQuantity, sellQuantity) || other.sellQuantity == sellQuantity)&&(identical(other.buyCount, buyCount) || other.buyCount == buyCount)&&(identical(other.sellCount, sellCount) || other.sellCount == sellCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,buyQuantity,sellQuantity,buyCount,sellCount);

@override
String toString() {
  return 'ActivityTrendPointModel(date: $date, buyQuantity: $buyQuantity, sellQuantity: $sellQuantity, buyCount: $buyCount, sellCount: $sellCount)';
}


}

/// @nodoc
abstract mixin class $ActivityTrendPointModelCopyWith<$Res>  {
  factory $ActivityTrendPointModelCopyWith(ActivityTrendPointModel value, $Res Function(ActivityTrendPointModel) _then) = _$ActivityTrendPointModelCopyWithImpl;
@useResult
$Res call({
 String date, double buyQuantity, double sellQuantity, int buyCount, int sellCount
});




}
/// @nodoc
class _$ActivityTrendPointModelCopyWithImpl<$Res>
    implements $ActivityTrendPointModelCopyWith<$Res> {
  _$ActivityTrendPointModelCopyWithImpl(this._self, this._then);

  final ActivityTrendPointModel _self;
  final $Res Function(ActivityTrendPointModel) _then;

/// Create a copy of ActivityTrendPointModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? buyQuantity = null,Object? sellQuantity = null,Object? buyCount = null,Object? sellCount = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,buyQuantity: null == buyQuantity ? _self.buyQuantity : buyQuantity // ignore: cast_nullable_to_non_nullable
as double,sellQuantity: null == sellQuantity ? _self.sellQuantity : sellQuantity // ignore: cast_nullable_to_non_nullable
as double,buyCount: null == buyCount ? _self.buyCount : buyCount // ignore: cast_nullable_to_non_nullable
as int,sellCount: null == sellCount ? _self.sellCount : sellCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityTrendPointModel].
extension ActivityTrendPointModelPatterns on ActivityTrendPointModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityTrendPointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityTrendPointModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityTrendPointModel value)  $default,){
final _that = this;
switch (_that) {
case _ActivityTrendPointModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityTrendPointModel value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityTrendPointModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  double buyQuantity,  double sellQuantity,  int buyCount,  int sellCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityTrendPointModel() when $default != null:
return $default(_that.date,_that.buyQuantity,_that.sellQuantity,_that.buyCount,_that.sellCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  double buyQuantity,  double sellQuantity,  int buyCount,  int sellCount)  $default,) {final _that = this;
switch (_that) {
case _ActivityTrendPointModel():
return $default(_that.date,_that.buyQuantity,_that.sellQuantity,_that.buyCount,_that.sellCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  double buyQuantity,  double sellQuantity,  int buyCount,  int sellCount)?  $default,) {final _that = this;
switch (_that) {
case _ActivityTrendPointModel() when $default != null:
return $default(_that.date,_that.buyQuantity,_that.sellQuantity,_that.buyCount,_that.sellCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityTrendPointModel implements ActivityTrendPointModel {
  const _ActivityTrendPointModel({required this.date, required this.buyQuantity, required this.sellQuantity, required this.buyCount, required this.sellCount});
  factory _ActivityTrendPointModel.fromJson(Map<String, dynamic> json) => _$ActivityTrendPointModelFromJson(json);

@override final  String date;
@override final  double buyQuantity;
@override final  double sellQuantity;
@override final  int buyCount;
@override final  int sellCount;

/// Create a copy of ActivityTrendPointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityTrendPointModelCopyWith<_ActivityTrendPointModel> get copyWith => __$ActivityTrendPointModelCopyWithImpl<_ActivityTrendPointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityTrendPointModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityTrendPointModel&&(identical(other.date, date) || other.date == date)&&(identical(other.buyQuantity, buyQuantity) || other.buyQuantity == buyQuantity)&&(identical(other.sellQuantity, sellQuantity) || other.sellQuantity == sellQuantity)&&(identical(other.buyCount, buyCount) || other.buyCount == buyCount)&&(identical(other.sellCount, sellCount) || other.sellCount == sellCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,buyQuantity,sellQuantity,buyCount,sellCount);

@override
String toString() {
  return 'ActivityTrendPointModel(date: $date, buyQuantity: $buyQuantity, sellQuantity: $sellQuantity, buyCount: $buyCount, sellCount: $sellCount)';
}


}

/// @nodoc
abstract mixin class _$ActivityTrendPointModelCopyWith<$Res> implements $ActivityTrendPointModelCopyWith<$Res> {
  factory _$ActivityTrendPointModelCopyWith(_ActivityTrendPointModel value, $Res Function(_ActivityTrendPointModel) _then) = __$ActivityTrendPointModelCopyWithImpl;
@override @useResult
$Res call({
 String date, double buyQuantity, double sellQuantity, int buyCount, int sellCount
});




}
/// @nodoc
class __$ActivityTrendPointModelCopyWithImpl<$Res>
    implements _$ActivityTrendPointModelCopyWith<$Res> {
  __$ActivityTrendPointModelCopyWithImpl(this._self, this._then);

  final _ActivityTrendPointModel _self;
  final $Res Function(_ActivityTrendPointModel) _then;

/// Create a copy of ActivityTrendPointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? buyQuantity = null,Object? sellQuantity = null,Object? buyCount = null,Object? sellCount = null,}) {
  return _then(_ActivityTrendPointModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,buyQuantity: null == buyQuantity ? _self.buyQuantity : buyQuantity // ignore: cast_nullable_to_non_nullable
as double,sellQuantity: null == sellQuantity ? _self.sellQuantity : sellQuantity // ignore: cast_nullable_to_non_nullable
as double,buyCount: null == buyCount ? _self.buyCount : buyCount // ignore: cast_nullable_to_non_nullable
as int,sellCount: null == sellCount ? _self.sellCount : sellCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MerchantTransactionModel {

 String get id;@JsonKey(name: 'userId') String get userId;@JsonKey(name: 'spiceGradeId') String get spiceGradeId; String get type; double get quantity; double get price;@JsonKey(name: 'tradeDate') String get tradeDate;@JsonKey(name: 'createdAt') String get createdAt;
/// Create a copy of MerchantTransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantTransactionModelCopyWith<MerchantTransactionModel> get copyWith => _$MerchantTransactionModelCopyWithImpl<MerchantTransactionModel>(this as MerchantTransactionModel, _$identity);

  /// Serializes this MerchantTransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.tradeDate, tradeDate) || other.tradeDate == tradeDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,spiceGradeId,type,quantity,price,tradeDate,createdAt);

@override
String toString() {
  return 'MerchantTransactionModel(id: $id, userId: $userId, spiceGradeId: $spiceGradeId, type: $type, quantity: $quantity, price: $price, tradeDate: $tradeDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MerchantTransactionModelCopyWith<$Res>  {
  factory $MerchantTransactionModelCopyWith(MerchantTransactionModel value, $Res Function(MerchantTransactionModel) _then) = _$MerchantTransactionModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'spiceGradeId') String spiceGradeId, String type, double quantity, double price,@JsonKey(name: 'tradeDate') String tradeDate,@JsonKey(name: 'createdAt') String createdAt
});




}
/// @nodoc
class _$MerchantTransactionModelCopyWithImpl<$Res>
    implements $MerchantTransactionModelCopyWith<$Res> {
  _$MerchantTransactionModelCopyWithImpl(this._self, this._then);

  final MerchantTransactionModel _self;
  final $Res Function(MerchantTransactionModel) _then;

/// Create a copy of MerchantTransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? spiceGradeId = null,Object? type = null,Object? quantity = null,Object? price = null,Object? tradeDate = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,spiceGradeId: null == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,tradeDate: null == tradeDate ? _self.tradeDate : tradeDate // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantTransactionModel].
extension MerchantTransactionModelPatterns on MerchantTransactionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantTransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantTransactionModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantTransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantTransactionModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantTransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantTransactionModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String type,  double quantity,  double price, @JsonKey(name: 'tradeDate')  String tradeDate, @JsonKey(name: 'createdAt')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantTransactionModel() when $default != null:
return $default(_that.id,_that.userId,_that.spiceGradeId,_that.type,_that.quantity,_that.price,_that.tradeDate,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String type,  double quantity,  double price, @JsonKey(name: 'tradeDate')  String tradeDate, @JsonKey(name: 'createdAt')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _MerchantTransactionModel():
return $default(_that.id,_that.userId,_that.spiceGradeId,_that.type,_that.quantity,_that.price,_that.tradeDate,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String type,  double quantity,  double price, @JsonKey(name: 'tradeDate')  String tradeDate, @JsonKey(name: 'createdAt')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MerchantTransactionModel() when $default != null:
return $default(_that.id,_that.userId,_that.spiceGradeId,_that.type,_that.quantity,_that.price,_that.tradeDate,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantTransactionModel implements MerchantTransactionModel {
  const _MerchantTransactionModel({required this.id, @JsonKey(name: 'userId') required this.userId, @JsonKey(name: 'spiceGradeId') required this.spiceGradeId, required this.type, required this.quantity, required this.price, @JsonKey(name: 'tradeDate') required this.tradeDate, @JsonKey(name: 'createdAt') required this.createdAt});
  factory _MerchantTransactionModel.fromJson(Map<String, dynamic> json) => _$MerchantTransactionModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'userId') final  String userId;
@override@JsonKey(name: 'spiceGradeId') final  String spiceGradeId;
@override final  String type;
@override final  double quantity;
@override final  double price;
@override@JsonKey(name: 'tradeDate') final  String tradeDate;
@override@JsonKey(name: 'createdAt') final  String createdAt;

/// Create a copy of MerchantTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantTransactionModelCopyWith<_MerchantTransactionModel> get copyWith => __$MerchantTransactionModelCopyWithImpl<_MerchantTransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantTransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.tradeDate, tradeDate) || other.tradeDate == tradeDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,spiceGradeId,type,quantity,price,tradeDate,createdAt);

@override
String toString() {
  return 'MerchantTransactionModel(id: $id, userId: $userId, spiceGradeId: $spiceGradeId, type: $type, quantity: $quantity, price: $price, tradeDate: $tradeDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MerchantTransactionModelCopyWith<$Res> implements $MerchantTransactionModelCopyWith<$Res> {
  factory _$MerchantTransactionModelCopyWith(_MerchantTransactionModel value, $Res Function(_MerchantTransactionModel) _then) = __$MerchantTransactionModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'spiceGradeId') String spiceGradeId, String type, double quantity, double price,@JsonKey(name: 'tradeDate') String tradeDate,@JsonKey(name: 'createdAt') String createdAt
});




}
/// @nodoc
class __$MerchantTransactionModelCopyWithImpl<$Res>
    implements _$MerchantTransactionModelCopyWith<$Res> {
  __$MerchantTransactionModelCopyWithImpl(this._self, this._then);

  final _MerchantTransactionModel _self;
  final $Res Function(_MerchantTransactionModel) _then;

/// Create a copy of MerchantTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? spiceGradeId = null,Object? type = null,Object? quantity = null,Object? price = null,Object? tradeDate = null,Object? createdAt = null,}) {
  return _then(_MerchantTransactionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,spiceGradeId: null == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,tradeDate: null == tradeDate ? _self.tradeDate : tradeDate // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MerchantInsightModel {

 String get kind; String get title; String get body;@JsonKey(name: 'spiceGradeId') String? get spiceGradeId; String get severity;
/// Create a copy of MerchantInsightModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantInsightModelCopyWith<MerchantInsightModel> get copyWith => _$MerchantInsightModelCopyWithImpl<MerchantInsightModel>(this as MerchantInsightModel, _$identity);

  /// Serializes this MerchantInsightModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantInsightModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.severity, severity) || other.severity == severity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,title,body,spiceGradeId,severity);

@override
String toString() {
  return 'MerchantInsightModel(kind: $kind, title: $title, body: $body, spiceGradeId: $spiceGradeId, severity: $severity)';
}


}

/// @nodoc
abstract mixin class $MerchantInsightModelCopyWith<$Res>  {
  factory $MerchantInsightModelCopyWith(MerchantInsightModel value, $Res Function(MerchantInsightModel) _then) = _$MerchantInsightModelCopyWithImpl;
@useResult
$Res call({
 String kind, String title, String body,@JsonKey(name: 'spiceGradeId') String? spiceGradeId, String severity
});




}
/// @nodoc
class _$MerchantInsightModelCopyWithImpl<$Res>
    implements $MerchantInsightModelCopyWith<$Res> {
  _$MerchantInsightModelCopyWithImpl(this._self, this._then);

  final MerchantInsightModel _self;
  final $Res Function(MerchantInsightModel) _then;

/// Create a copy of MerchantInsightModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = null,Object? title = null,Object? body = null,Object? spiceGradeId = freezed,Object? severity = null,}) {
  return _then(_self.copyWith(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,spiceGradeId: freezed == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String?,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantInsightModel].
extension MerchantInsightModelPatterns on MerchantInsightModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantInsightModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantInsightModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantInsightModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantInsightModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantInsightModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantInsightModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kind,  String title,  String body, @JsonKey(name: 'spiceGradeId')  String? spiceGradeId,  String severity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantInsightModel() when $default != null:
return $default(_that.kind,_that.title,_that.body,_that.spiceGradeId,_that.severity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kind,  String title,  String body, @JsonKey(name: 'spiceGradeId')  String? spiceGradeId,  String severity)  $default,) {final _that = this;
switch (_that) {
case _MerchantInsightModel():
return $default(_that.kind,_that.title,_that.body,_that.spiceGradeId,_that.severity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kind,  String title,  String body, @JsonKey(name: 'spiceGradeId')  String? spiceGradeId,  String severity)?  $default,) {final _that = this;
switch (_that) {
case _MerchantInsightModel() when $default != null:
return $default(_that.kind,_that.title,_that.body,_that.spiceGradeId,_that.severity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantInsightModel implements MerchantInsightModel {
  const _MerchantInsightModel({required this.kind, required this.title, required this.body, @JsonKey(name: 'spiceGradeId') this.spiceGradeId, required this.severity});
  factory _MerchantInsightModel.fromJson(Map<String, dynamic> json) => _$MerchantInsightModelFromJson(json);

@override final  String kind;
@override final  String title;
@override final  String body;
@override@JsonKey(name: 'spiceGradeId') final  String? spiceGradeId;
@override final  String severity;

/// Create a copy of MerchantInsightModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantInsightModelCopyWith<_MerchantInsightModel> get copyWith => __$MerchantInsightModelCopyWithImpl<_MerchantInsightModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantInsightModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantInsightModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.severity, severity) || other.severity == severity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,title,body,spiceGradeId,severity);

@override
String toString() {
  return 'MerchantInsightModel(kind: $kind, title: $title, body: $body, spiceGradeId: $spiceGradeId, severity: $severity)';
}


}

/// @nodoc
abstract mixin class _$MerchantInsightModelCopyWith<$Res> implements $MerchantInsightModelCopyWith<$Res> {
  factory _$MerchantInsightModelCopyWith(_MerchantInsightModel value, $Res Function(_MerchantInsightModel) _then) = __$MerchantInsightModelCopyWithImpl;
@override @useResult
$Res call({
 String kind, String title, String body,@JsonKey(name: 'spiceGradeId') String? spiceGradeId, String severity
});




}
/// @nodoc
class __$MerchantInsightModelCopyWithImpl<$Res>
    implements _$MerchantInsightModelCopyWith<$Res> {
  __$MerchantInsightModelCopyWithImpl(this._self, this._then);

  final _MerchantInsightModel _self;
  final $Res Function(_MerchantInsightModel) _then;

/// Create a copy of MerchantInsightModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? title = null,Object? body = null,Object? spiceGradeId = freezed,Object? severity = null,}) {
  return _then(_MerchantInsightModel(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,spiceGradeId: freezed == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String?,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MerchantMoverModel {

@JsonKey(name: 'spiceGradeId') String get spiceGradeId; String get productName; String get gradeName; double get todayPrice; double get previousPrice; double get changePercent; String get direction;
/// Create a copy of MerchantMoverModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantMoverModelCopyWith<MerchantMoverModel> get copyWith => _$MerchantMoverModelCopyWithImpl<MerchantMoverModel>(this as MerchantMoverModel, _$identity);

  /// Serializes this MerchantMoverModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantMoverModel&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.todayPrice, todayPrice) || other.todayPrice == todayPrice)&&(identical(other.previousPrice, previousPrice) || other.previousPrice == previousPrice)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent)&&(identical(other.direction, direction) || other.direction == direction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,spiceGradeId,productName,gradeName,todayPrice,previousPrice,changePercent,direction);

@override
String toString() {
  return 'MerchantMoverModel(spiceGradeId: $spiceGradeId, productName: $productName, gradeName: $gradeName, todayPrice: $todayPrice, previousPrice: $previousPrice, changePercent: $changePercent, direction: $direction)';
}


}

/// @nodoc
abstract mixin class $MerchantMoverModelCopyWith<$Res>  {
  factory $MerchantMoverModelCopyWith(MerchantMoverModel value, $Res Function(MerchantMoverModel) _then) = _$MerchantMoverModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'spiceGradeId') String spiceGradeId, String productName, String gradeName, double todayPrice, double previousPrice, double changePercent, String direction
});




}
/// @nodoc
class _$MerchantMoverModelCopyWithImpl<$Res>
    implements $MerchantMoverModelCopyWith<$Res> {
  _$MerchantMoverModelCopyWithImpl(this._self, this._then);

  final MerchantMoverModel _self;
  final $Res Function(MerchantMoverModel) _then;

/// Create a copy of MerchantMoverModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spiceGradeId = null,Object? productName = null,Object? gradeName = null,Object? todayPrice = null,Object? previousPrice = null,Object? changePercent = null,Object? direction = null,}) {
  return _then(_self.copyWith(
spiceGradeId: null == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,todayPrice: null == todayPrice ? _self.todayPrice : todayPrice // ignore: cast_nullable_to_non_nullable
as double,previousPrice: null == previousPrice ? _self.previousPrice : previousPrice // ignore: cast_nullable_to_non_nullable
as double,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantMoverModel].
extension MerchantMoverModelPatterns on MerchantMoverModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantMoverModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantMoverModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantMoverModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantMoverModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantMoverModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantMoverModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String productName,  String gradeName,  double todayPrice,  double previousPrice,  double changePercent,  String direction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantMoverModel() when $default != null:
return $default(_that.spiceGradeId,_that.productName,_that.gradeName,_that.todayPrice,_that.previousPrice,_that.changePercent,_that.direction);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String productName,  String gradeName,  double todayPrice,  double previousPrice,  double changePercent,  String direction)  $default,) {final _that = this;
switch (_that) {
case _MerchantMoverModel():
return $default(_that.spiceGradeId,_that.productName,_that.gradeName,_that.todayPrice,_that.previousPrice,_that.changePercent,_that.direction);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String productName,  String gradeName,  double todayPrice,  double previousPrice,  double changePercent,  String direction)?  $default,) {final _that = this;
switch (_that) {
case _MerchantMoverModel() when $default != null:
return $default(_that.spiceGradeId,_that.productName,_that.gradeName,_that.todayPrice,_that.previousPrice,_that.changePercent,_that.direction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantMoverModel implements MerchantMoverModel {
  const _MerchantMoverModel({@JsonKey(name: 'spiceGradeId') required this.spiceGradeId, required this.productName, required this.gradeName, required this.todayPrice, required this.previousPrice, required this.changePercent, required this.direction});
  factory _MerchantMoverModel.fromJson(Map<String, dynamic> json) => _$MerchantMoverModelFromJson(json);

@override@JsonKey(name: 'spiceGradeId') final  String spiceGradeId;
@override final  String productName;
@override final  String gradeName;
@override final  double todayPrice;
@override final  double previousPrice;
@override final  double changePercent;
@override final  String direction;

/// Create a copy of MerchantMoverModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantMoverModelCopyWith<_MerchantMoverModel> get copyWith => __$MerchantMoverModelCopyWithImpl<_MerchantMoverModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantMoverModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantMoverModel&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.todayPrice, todayPrice) || other.todayPrice == todayPrice)&&(identical(other.previousPrice, previousPrice) || other.previousPrice == previousPrice)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent)&&(identical(other.direction, direction) || other.direction == direction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,spiceGradeId,productName,gradeName,todayPrice,previousPrice,changePercent,direction);

@override
String toString() {
  return 'MerchantMoverModel(spiceGradeId: $spiceGradeId, productName: $productName, gradeName: $gradeName, todayPrice: $todayPrice, previousPrice: $previousPrice, changePercent: $changePercent, direction: $direction)';
}


}

/// @nodoc
abstract mixin class _$MerchantMoverModelCopyWith<$Res> implements $MerchantMoverModelCopyWith<$Res> {
  factory _$MerchantMoverModelCopyWith(_MerchantMoverModel value, $Res Function(_MerchantMoverModel) _then) = __$MerchantMoverModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'spiceGradeId') String spiceGradeId, String productName, String gradeName, double todayPrice, double previousPrice, double changePercent, String direction
});




}
/// @nodoc
class __$MerchantMoverModelCopyWithImpl<$Res>
    implements _$MerchantMoverModelCopyWith<$Res> {
  __$MerchantMoverModelCopyWithImpl(this._self, this._then);

  final _MerchantMoverModel _self;
  final $Res Function(_MerchantMoverModel) _then;

/// Create a copy of MerchantMoverModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? spiceGradeId = null,Object? productName = null,Object? gradeName = null,Object? todayPrice = null,Object? previousPrice = null,Object? changePercent = null,Object? direction = null,}) {
  return _then(_MerchantMoverModel(
spiceGradeId: null == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,todayPrice: null == todayPrice ? _self.todayPrice : todayPrice // ignore: cast_nullable_to_non_nullable
as double,previousPrice: null == previousPrice ? _self.previousPrice : previousPrice // ignore: cast_nullable_to_non_nullable
as double,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MerchantDashboardModel {

 MerchantDashboardSummaryModel get summary; List<MerchantHoldingModel> get holdings; List<PortfolioMixItemModel> get portfolioMix; List<PnlTrendPointModel> get pnlTrend; List<ActivityTrendPointModel> get activityTrend; List<MerchantTransactionModel> get recentTransactions; List<MerchantInsightModel> get insights; List<MerchantMoverModel> get movers;
/// Create a copy of MerchantDashboardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantDashboardModelCopyWith<MerchantDashboardModel> get copyWith => _$MerchantDashboardModelCopyWithImpl<MerchantDashboardModel>(this as MerchantDashboardModel, _$identity);

  /// Serializes this MerchantDashboardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantDashboardModel&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.holdings, holdings)&&const DeepCollectionEquality().equals(other.portfolioMix, portfolioMix)&&const DeepCollectionEquality().equals(other.pnlTrend, pnlTrend)&&const DeepCollectionEquality().equals(other.activityTrend, activityTrend)&&const DeepCollectionEquality().equals(other.recentTransactions, recentTransactions)&&const DeepCollectionEquality().equals(other.insights, insights)&&const DeepCollectionEquality().equals(other.movers, movers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summary,const DeepCollectionEquality().hash(holdings),const DeepCollectionEquality().hash(portfolioMix),const DeepCollectionEquality().hash(pnlTrend),const DeepCollectionEquality().hash(activityTrend),const DeepCollectionEquality().hash(recentTransactions),const DeepCollectionEquality().hash(insights),const DeepCollectionEquality().hash(movers));

@override
String toString() {
  return 'MerchantDashboardModel(summary: $summary, holdings: $holdings, portfolioMix: $portfolioMix, pnlTrend: $pnlTrend, activityTrend: $activityTrend, recentTransactions: $recentTransactions, insights: $insights, movers: $movers)';
}


}

/// @nodoc
abstract mixin class $MerchantDashboardModelCopyWith<$Res>  {
  factory $MerchantDashboardModelCopyWith(MerchantDashboardModel value, $Res Function(MerchantDashboardModel) _then) = _$MerchantDashboardModelCopyWithImpl;
@useResult
$Res call({
 MerchantDashboardSummaryModel summary, List<MerchantHoldingModel> holdings, List<PortfolioMixItemModel> portfolioMix, List<PnlTrendPointModel> pnlTrend, List<ActivityTrendPointModel> activityTrend, List<MerchantTransactionModel> recentTransactions, List<MerchantInsightModel> insights, List<MerchantMoverModel> movers
});


$MerchantDashboardSummaryModelCopyWith<$Res> get summary;

}
/// @nodoc
class _$MerchantDashboardModelCopyWithImpl<$Res>
    implements $MerchantDashboardModelCopyWith<$Res> {
  _$MerchantDashboardModelCopyWithImpl(this._self, this._then);

  final MerchantDashboardModel _self;
  final $Res Function(MerchantDashboardModel) _then;

/// Create a copy of MerchantDashboardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = null,Object? holdings = null,Object? portfolioMix = null,Object? pnlTrend = null,Object? activityTrend = null,Object? recentTransactions = null,Object? insights = null,Object? movers = null,}) {
  return _then(_self.copyWith(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as MerchantDashboardSummaryModel,holdings: null == holdings ? _self.holdings : holdings // ignore: cast_nullable_to_non_nullable
as List<MerchantHoldingModel>,portfolioMix: null == portfolioMix ? _self.portfolioMix : portfolioMix // ignore: cast_nullable_to_non_nullable
as List<PortfolioMixItemModel>,pnlTrend: null == pnlTrend ? _self.pnlTrend : pnlTrend // ignore: cast_nullable_to_non_nullable
as List<PnlTrendPointModel>,activityTrend: null == activityTrend ? _self.activityTrend : activityTrend // ignore: cast_nullable_to_non_nullable
as List<ActivityTrendPointModel>,recentTransactions: null == recentTransactions ? _self.recentTransactions : recentTransactions // ignore: cast_nullable_to_non_nullable
as List<MerchantTransactionModel>,insights: null == insights ? _self.insights : insights // ignore: cast_nullable_to_non_nullable
as List<MerchantInsightModel>,movers: null == movers ? _self.movers : movers // ignore: cast_nullable_to_non_nullable
as List<MerchantMoverModel>,
  ));
}
/// Create a copy of MerchantDashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MerchantDashboardSummaryModelCopyWith<$Res> get summary {
  
  return $MerchantDashboardSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [MerchantDashboardModel].
extension MerchantDashboardModelPatterns on MerchantDashboardModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantDashboardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantDashboardModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantDashboardModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantDashboardModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantDashboardModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantDashboardModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MerchantDashboardSummaryModel summary,  List<MerchantHoldingModel> holdings,  List<PortfolioMixItemModel> portfolioMix,  List<PnlTrendPointModel> pnlTrend,  List<ActivityTrendPointModel> activityTrend,  List<MerchantTransactionModel> recentTransactions,  List<MerchantInsightModel> insights,  List<MerchantMoverModel> movers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantDashboardModel() when $default != null:
return $default(_that.summary,_that.holdings,_that.portfolioMix,_that.pnlTrend,_that.activityTrend,_that.recentTransactions,_that.insights,_that.movers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MerchantDashboardSummaryModel summary,  List<MerchantHoldingModel> holdings,  List<PortfolioMixItemModel> portfolioMix,  List<PnlTrendPointModel> pnlTrend,  List<ActivityTrendPointModel> activityTrend,  List<MerchantTransactionModel> recentTransactions,  List<MerchantInsightModel> insights,  List<MerchantMoverModel> movers)  $default,) {final _that = this;
switch (_that) {
case _MerchantDashboardModel():
return $default(_that.summary,_that.holdings,_that.portfolioMix,_that.pnlTrend,_that.activityTrend,_that.recentTransactions,_that.insights,_that.movers);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MerchantDashboardSummaryModel summary,  List<MerchantHoldingModel> holdings,  List<PortfolioMixItemModel> portfolioMix,  List<PnlTrendPointModel> pnlTrend,  List<ActivityTrendPointModel> activityTrend,  List<MerchantTransactionModel> recentTransactions,  List<MerchantInsightModel> insights,  List<MerchantMoverModel> movers)?  $default,) {final _that = this;
switch (_that) {
case _MerchantDashboardModel() when $default != null:
return $default(_that.summary,_that.holdings,_that.portfolioMix,_that.pnlTrend,_that.activityTrend,_that.recentTransactions,_that.insights,_that.movers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantDashboardModel implements MerchantDashboardModel {
  const _MerchantDashboardModel({required this.summary, required final  List<MerchantHoldingModel> holdings, required final  List<PortfolioMixItemModel> portfolioMix, required final  List<PnlTrendPointModel> pnlTrend, required final  List<ActivityTrendPointModel> activityTrend, required final  List<MerchantTransactionModel> recentTransactions, required final  List<MerchantInsightModel> insights, required final  List<MerchantMoverModel> movers}): _holdings = holdings,_portfolioMix = portfolioMix,_pnlTrend = pnlTrend,_activityTrend = activityTrend,_recentTransactions = recentTransactions,_insights = insights,_movers = movers;
  factory _MerchantDashboardModel.fromJson(Map<String, dynamic> json) => _$MerchantDashboardModelFromJson(json);

@override final  MerchantDashboardSummaryModel summary;
 final  List<MerchantHoldingModel> _holdings;
@override List<MerchantHoldingModel> get holdings {
  if (_holdings is EqualUnmodifiableListView) return _holdings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_holdings);
}

 final  List<PortfolioMixItemModel> _portfolioMix;
@override List<PortfolioMixItemModel> get portfolioMix {
  if (_portfolioMix is EqualUnmodifiableListView) return _portfolioMix;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_portfolioMix);
}

 final  List<PnlTrendPointModel> _pnlTrend;
@override List<PnlTrendPointModel> get pnlTrend {
  if (_pnlTrend is EqualUnmodifiableListView) return _pnlTrend;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pnlTrend);
}

 final  List<ActivityTrendPointModel> _activityTrend;
@override List<ActivityTrendPointModel> get activityTrend {
  if (_activityTrend is EqualUnmodifiableListView) return _activityTrend;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activityTrend);
}

 final  List<MerchantTransactionModel> _recentTransactions;
@override List<MerchantTransactionModel> get recentTransactions {
  if (_recentTransactions is EqualUnmodifiableListView) return _recentTransactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentTransactions);
}

 final  List<MerchantInsightModel> _insights;
@override List<MerchantInsightModel> get insights {
  if (_insights is EqualUnmodifiableListView) return _insights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_insights);
}

 final  List<MerchantMoverModel> _movers;
@override List<MerchantMoverModel> get movers {
  if (_movers is EqualUnmodifiableListView) return _movers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movers);
}


/// Create a copy of MerchantDashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantDashboardModelCopyWith<_MerchantDashboardModel> get copyWith => __$MerchantDashboardModelCopyWithImpl<_MerchantDashboardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantDashboardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantDashboardModel&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._holdings, _holdings)&&const DeepCollectionEquality().equals(other._portfolioMix, _portfolioMix)&&const DeepCollectionEquality().equals(other._pnlTrend, _pnlTrend)&&const DeepCollectionEquality().equals(other._activityTrend, _activityTrend)&&const DeepCollectionEquality().equals(other._recentTransactions, _recentTransactions)&&const DeepCollectionEquality().equals(other._insights, _insights)&&const DeepCollectionEquality().equals(other._movers, _movers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summary,const DeepCollectionEquality().hash(_holdings),const DeepCollectionEquality().hash(_portfolioMix),const DeepCollectionEquality().hash(_pnlTrend),const DeepCollectionEquality().hash(_activityTrend),const DeepCollectionEquality().hash(_recentTransactions),const DeepCollectionEquality().hash(_insights),const DeepCollectionEquality().hash(_movers));

@override
String toString() {
  return 'MerchantDashboardModel(summary: $summary, holdings: $holdings, portfolioMix: $portfolioMix, pnlTrend: $pnlTrend, activityTrend: $activityTrend, recentTransactions: $recentTransactions, insights: $insights, movers: $movers)';
}


}

/// @nodoc
abstract mixin class _$MerchantDashboardModelCopyWith<$Res> implements $MerchantDashboardModelCopyWith<$Res> {
  factory _$MerchantDashboardModelCopyWith(_MerchantDashboardModel value, $Res Function(_MerchantDashboardModel) _then) = __$MerchantDashboardModelCopyWithImpl;
@override @useResult
$Res call({
 MerchantDashboardSummaryModel summary, List<MerchantHoldingModel> holdings, List<PortfolioMixItemModel> portfolioMix, List<PnlTrendPointModel> pnlTrend, List<ActivityTrendPointModel> activityTrend, List<MerchantTransactionModel> recentTransactions, List<MerchantInsightModel> insights, List<MerchantMoverModel> movers
});


@override $MerchantDashboardSummaryModelCopyWith<$Res> get summary;

}
/// @nodoc
class __$MerchantDashboardModelCopyWithImpl<$Res>
    implements _$MerchantDashboardModelCopyWith<$Res> {
  __$MerchantDashboardModelCopyWithImpl(this._self, this._then);

  final _MerchantDashboardModel _self;
  final $Res Function(_MerchantDashboardModel) _then;

/// Create a copy of MerchantDashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = null,Object? holdings = null,Object? portfolioMix = null,Object? pnlTrend = null,Object? activityTrend = null,Object? recentTransactions = null,Object? insights = null,Object? movers = null,}) {
  return _then(_MerchantDashboardModel(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as MerchantDashboardSummaryModel,holdings: null == holdings ? _self._holdings : holdings // ignore: cast_nullable_to_non_nullable
as List<MerchantHoldingModel>,portfolioMix: null == portfolioMix ? _self._portfolioMix : portfolioMix // ignore: cast_nullable_to_non_nullable
as List<PortfolioMixItemModel>,pnlTrend: null == pnlTrend ? _self._pnlTrend : pnlTrend // ignore: cast_nullable_to_non_nullable
as List<PnlTrendPointModel>,activityTrend: null == activityTrend ? _self._activityTrend : activityTrend // ignore: cast_nullable_to_non_nullable
as List<ActivityTrendPointModel>,recentTransactions: null == recentTransactions ? _self._recentTransactions : recentTransactions // ignore: cast_nullable_to_non_nullable
as List<MerchantTransactionModel>,insights: null == insights ? _self._insights : insights // ignore: cast_nullable_to_non_nullable
as List<MerchantInsightModel>,movers: null == movers ? _self._movers : movers // ignore: cast_nullable_to_non_nullable
as List<MerchantMoverModel>,
  ));
}

/// Create a copy of MerchantDashboardModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MerchantDashboardSummaryModelCopyWith<$Res> get summary {
  
  return $MerchantDashboardSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on

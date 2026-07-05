// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_position_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MerchantPositionModel {

@JsonKey(name: 'userId') String get userId;@JsonKey(name: 'spiceGradeId') String get spiceGradeId; double get totalQty; double get totalCost; double get avgCost; double get todayPrice; double get realizedPnL; double get unrealizedPnL; String get updatedAt;
/// Create a copy of MerchantPositionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantPositionModelCopyWith<MerchantPositionModel> get copyWith => _$MerchantPositionModelCopyWithImpl<MerchantPositionModel>(this as MerchantPositionModel, _$identity);

  /// Serializes this MerchantPositionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantPositionModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.totalQty, totalQty) || other.totalQty == totalQty)&&(identical(other.totalCost, totalCost) || other.totalCost == totalCost)&&(identical(other.avgCost, avgCost) || other.avgCost == avgCost)&&(identical(other.todayPrice, todayPrice) || other.todayPrice == todayPrice)&&(identical(other.realizedPnL, realizedPnL) || other.realizedPnL == realizedPnL)&&(identical(other.unrealizedPnL, unrealizedPnL) || other.unrealizedPnL == unrealizedPnL)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,spiceGradeId,totalQty,totalCost,avgCost,todayPrice,realizedPnL,unrealizedPnL,updatedAt);

@override
String toString() {
  return 'MerchantPositionModel(userId: $userId, spiceGradeId: $spiceGradeId, totalQty: $totalQty, totalCost: $totalCost, avgCost: $avgCost, todayPrice: $todayPrice, realizedPnL: $realizedPnL, unrealizedPnL: $unrealizedPnL, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MerchantPositionModelCopyWith<$Res>  {
  factory $MerchantPositionModelCopyWith(MerchantPositionModel value, $Res Function(MerchantPositionModel) _then) = _$MerchantPositionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'userId') String userId,@JsonKey(name: 'spiceGradeId') String spiceGradeId, double totalQty, double totalCost, double avgCost, double todayPrice, double realizedPnL, double unrealizedPnL, String updatedAt
});




}
/// @nodoc
class _$MerchantPositionModelCopyWithImpl<$Res>
    implements $MerchantPositionModelCopyWith<$Res> {
  _$MerchantPositionModelCopyWithImpl(this._self, this._then);

  final MerchantPositionModel _self;
  final $Res Function(MerchantPositionModel) _then;

/// Create a copy of MerchantPositionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? spiceGradeId = null,Object? totalQty = null,Object? totalCost = null,Object? avgCost = null,Object? todayPrice = null,Object? realizedPnL = null,Object? unrealizedPnL = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,spiceGradeId: null == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String,totalQty: null == totalQty ? _self.totalQty : totalQty // ignore: cast_nullable_to_non_nullable
as double,totalCost: null == totalCost ? _self.totalCost : totalCost // ignore: cast_nullable_to_non_nullable
as double,avgCost: null == avgCost ? _self.avgCost : avgCost // ignore: cast_nullable_to_non_nullable
as double,todayPrice: null == todayPrice ? _self.todayPrice : todayPrice // ignore: cast_nullable_to_non_nullable
as double,realizedPnL: null == realizedPnL ? _self.realizedPnL : realizedPnL // ignore: cast_nullable_to_non_nullable
as double,unrealizedPnL: null == unrealizedPnL ? _self.unrealizedPnL : unrealizedPnL // ignore: cast_nullable_to_non_nullable
as double,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantPositionModel].
extension MerchantPositionModelPatterns on MerchantPositionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantPositionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantPositionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantPositionModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantPositionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantPositionModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantPositionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'userId')  String userId, @JsonKey(name: 'spiceGradeId')  String spiceGradeId,  double totalQty,  double totalCost,  double avgCost,  double todayPrice,  double realizedPnL,  double unrealizedPnL,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantPositionModel() when $default != null:
return $default(_that.userId,_that.spiceGradeId,_that.totalQty,_that.totalCost,_that.avgCost,_that.todayPrice,_that.realizedPnL,_that.unrealizedPnL,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'userId')  String userId, @JsonKey(name: 'spiceGradeId')  String spiceGradeId,  double totalQty,  double totalCost,  double avgCost,  double todayPrice,  double realizedPnL,  double unrealizedPnL,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MerchantPositionModel():
return $default(_that.userId,_that.spiceGradeId,_that.totalQty,_that.totalCost,_that.avgCost,_that.todayPrice,_that.realizedPnL,_that.unrealizedPnL,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'userId')  String userId, @JsonKey(name: 'spiceGradeId')  String spiceGradeId,  double totalQty,  double totalCost,  double avgCost,  double todayPrice,  double realizedPnL,  double unrealizedPnL,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MerchantPositionModel() when $default != null:
return $default(_that.userId,_that.spiceGradeId,_that.totalQty,_that.totalCost,_that.avgCost,_that.todayPrice,_that.realizedPnL,_that.unrealizedPnL,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantPositionModel implements MerchantPositionModel {
  const _MerchantPositionModel({@JsonKey(name: 'userId') required this.userId, @JsonKey(name: 'spiceGradeId') required this.spiceGradeId, required this.totalQty, required this.totalCost, required this.avgCost, required this.todayPrice, required this.realizedPnL, required this.unrealizedPnL, required this.updatedAt});
  factory _MerchantPositionModel.fromJson(Map<String, dynamic> json) => _$MerchantPositionModelFromJson(json);

@override@JsonKey(name: 'userId') final  String userId;
@override@JsonKey(name: 'spiceGradeId') final  String spiceGradeId;
@override final  double totalQty;
@override final  double totalCost;
@override final  double avgCost;
@override final  double todayPrice;
@override final  double realizedPnL;
@override final  double unrealizedPnL;
@override final  String updatedAt;

/// Create a copy of MerchantPositionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantPositionModelCopyWith<_MerchantPositionModel> get copyWith => __$MerchantPositionModelCopyWithImpl<_MerchantPositionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantPositionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantPositionModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.totalQty, totalQty) || other.totalQty == totalQty)&&(identical(other.totalCost, totalCost) || other.totalCost == totalCost)&&(identical(other.avgCost, avgCost) || other.avgCost == avgCost)&&(identical(other.todayPrice, todayPrice) || other.todayPrice == todayPrice)&&(identical(other.realizedPnL, realizedPnL) || other.realizedPnL == realizedPnL)&&(identical(other.unrealizedPnL, unrealizedPnL) || other.unrealizedPnL == unrealizedPnL)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,spiceGradeId,totalQty,totalCost,avgCost,todayPrice,realizedPnL,unrealizedPnL,updatedAt);

@override
String toString() {
  return 'MerchantPositionModel(userId: $userId, spiceGradeId: $spiceGradeId, totalQty: $totalQty, totalCost: $totalCost, avgCost: $avgCost, todayPrice: $todayPrice, realizedPnL: $realizedPnL, unrealizedPnL: $unrealizedPnL, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MerchantPositionModelCopyWith<$Res> implements $MerchantPositionModelCopyWith<$Res> {
  factory _$MerchantPositionModelCopyWith(_MerchantPositionModel value, $Res Function(_MerchantPositionModel) _then) = __$MerchantPositionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'userId') String userId,@JsonKey(name: 'spiceGradeId') String spiceGradeId, double totalQty, double totalCost, double avgCost, double todayPrice, double realizedPnL, double unrealizedPnL, String updatedAt
});




}
/// @nodoc
class __$MerchantPositionModelCopyWithImpl<$Res>
    implements _$MerchantPositionModelCopyWith<$Res> {
  __$MerchantPositionModelCopyWithImpl(this._self, this._then);

  final _MerchantPositionModel _self;
  final $Res Function(_MerchantPositionModel) _then;

/// Create a copy of MerchantPositionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? spiceGradeId = null,Object? totalQty = null,Object? totalCost = null,Object? avgCost = null,Object? todayPrice = null,Object? realizedPnL = null,Object? unrealizedPnL = null,Object? updatedAt = null,}) {
  return _then(_MerchantPositionModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,spiceGradeId: null == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String,totalQty: null == totalQty ? _self.totalQty : totalQty // ignore: cast_nullable_to_non_nullable
as double,totalCost: null == totalCost ? _self.totalCost : totalCost // ignore: cast_nullable_to_non_nullable
as double,avgCost: null == avgCost ? _self.avgCost : avgCost // ignore: cast_nullable_to_non_nullable
as double,todayPrice: null == todayPrice ? _self.todayPrice : todayPrice // ignore: cast_nullable_to_non_nullable
as double,realizedPnL: null == realizedPnL ? _self.realizedPnL : realizedPnL // ignore: cast_nullable_to_non_nullable
as double,unrealizedPnL: null == unrealizedPnL ? _self.unrealizedPnL : unrealizedPnL // ignore: cast_nullable_to_non_nullable
as double,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

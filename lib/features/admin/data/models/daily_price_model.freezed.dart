// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyPriceItem {

@JsonKey(name: 'product_id') String get productId;@JsonKey(name: 'grade_id') String get gradeId;@JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero) double get pricePerKg;
/// Create a copy of DailyPriceItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyPriceItemCopyWith<DailyPriceItem> get copyWith => _$DailyPriceItemCopyWithImpl<DailyPriceItem>(this as DailyPriceItem, _$identity);

  /// Serializes this DailyPriceItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyPriceItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.pricePerKg, pricePerKg) || other.pricePerKg == pricePerKg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,gradeId,pricePerKg);

@override
String toString() {
  return 'DailyPriceItem(productId: $productId, gradeId: $gradeId, pricePerKg: $pricePerKg)';
}


}

/// @nodoc
abstract mixin class $DailyPriceItemCopyWith<$Res>  {
  factory $DailyPriceItemCopyWith(DailyPriceItem value, $Res Function(DailyPriceItem) _then) = _$DailyPriceItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'grade_id') String gradeId,@JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero) double pricePerKg
});




}
/// @nodoc
class _$DailyPriceItemCopyWithImpl<$Res>
    implements $DailyPriceItemCopyWith<$Res> {
  _$DailyPriceItemCopyWithImpl(this._self, this._then);

  final DailyPriceItem _self;
  final $Res Function(DailyPriceItem) _then;

/// Create a copy of DailyPriceItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? gradeId = null,Object? pricePerKg = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,pricePerKg: null == pricePerKg ? _self.pricePerKg : pricePerKg // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyPriceItem].
extension DailyPriceItemPatterns on DailyPriceItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyPriceItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyPriceItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyPriceItem value)  $default,){
final _that = this;
switch (_that) {
case _DailyPriceItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyPriceItem value)?  $default,){
final _that = this;
switch (_that) {
case _DailyPriceItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'grade_id')  String gradeId, @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero)  double pricePerKg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyPriceItem() when $default != null:
return $default(_that.productId,_that.gradeId,_that.pricePerKg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'grade_id')  String gradeId, @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero)  double pricePerKg)  $default,) {final _that = this;
switch (_that) {
case _DailyPriceItem():
return $default(_that.productId,_that.gradeId,_that.pricePerKg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'grade_id')  String gradeId, @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero)  double pricePerKg)?  $default,) {final _that = this;
switch (_that) {
case _DailyPriceItem() when $default != null:
return $default(_that.productId,_that.gradeId,_that.pricePerKg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyPriceItem implements DailyPriceItem {
  const _DailyPriceItem({@JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'grade_id') required this.gradeId, @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero) required this.pricePerKg});
  factory _DailyPriceItem.fromJson(Map<String, dynamic> json) => _$DailyPriceItemFromJson(json);

@override@JsonKey(name: 'product_id') final  String productId;
@override@JsonKey(name: 'grade_id') final  String gradeId;
@override@JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero) final  double pricePerKg;

/// Create a copy of DailyPriceItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyPriceItemCopyWith<_DailyPriceItem> get copyWith => __$DailyPriceItemCopyWithImpl<_DailyPriceItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyPriceItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyPriceItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.pricePerKg, pricePerKg) || other.pricePerKg == pricePerKg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,gradeId,pricePerKg);

@override
String toString() {
  return 'DailyPriceItem(productId: $productId, gradeId: $gradeId, pricePerKg: $pricePerKg)';
}


}

/// @nodoc
abstract mixin class _$DailyPriceItemCopyWith<$Res> implements $DailyPriceItemCopyWith<$Res> {
  factory _$DailyPriceItemCopyWith(_DailyPriceItem value, $Res Function(_DailyPriceItem) _then) = __$DailyPriceItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'grade_id') String gradeId,@JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero) double pricePerKg
});




}
/// @nodoc
class __$DailyPriceItemCopyWithImpl<$Res>
    implements _$DailyPriceItemCopyWith<$Res> {
  __$DailyPriceItemCopyWithImpl(this._self, this._then);

  final _DailyPriceItem _self;
  final $Res Function(_DailyPriceItem) _then;

/// Create a copy of DailyPriceItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? gradeId = null,Object? pricePerKg = null,}) {
  return _then(_DailyPriceItem(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,pricePerKg: null == pricePerKg ? _self.pricePerKg : pricePerKg // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$DailyPricesResponse {

 String get date; List<DailyPriceItem>? get prices;
/// Create a copy of DailyPricesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyPricesResponseCopyWith<DailyPricesResponse> get copyWith => _$DailyPricesResponseCopyWithImpl<DailyPricesResponse>(this as DailyPricesResponse, _$identity);

  /// Serializes this DailyPricesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyPricesResponse&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.prices, prices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(prices));

@override
String toString() {
  return 'DailyPricesResponse(date: $date, prices: $prices)';
}


}

/// @nodoc
abstract mixin class $DailyPricesResponseCopyWith<$Res>  {
  factory $DailyPricesResponseCopyWith(DailyPricesResponse value, $Res Function(DailyPricesResponse) _then) = _$DailyPricesResponseCopyWithImpl;
@useResult
$Res call({
 String date, List<DailyPriceItem>? prices
});




}
/// @nodoc
class _$DailyPricesResponseCopyWithImpl<$Res>
    implements $DailyPricesResponseCopyWith<$Res> {
  _$DailyPricesResponseCopyWithImpl(this._self, this._then);

  final DailyPricesResponse _self;
  final $Res Function(DailyPricesResponse) _then;

/// Create a copy of DailyPricesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? prices = freezed,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,prices: freezed == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as List<DailyPriceItem>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyPricesResponse].
extension DailyPricesResponsePatterns on DailyPricesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyPricesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyPricesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyPricesResponse value)  $default,){
final _that = this;
switch (_that) {
case _DailyPricesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyPricesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DailyPricesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  List<DailyPriceItem>? prices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyPricesResponse() when $default != null:
return $default(_that.date,_that.prices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  List<DailyPriceItem>? prices)  $default,) {final _that = this;
switch (_that) {
case _DailyPricesResponse():
return $default(_that.date,_that.prices);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  List<DailyPriceItem>? prices)?  $default,) {final _that = this;
switch (_that) {
case _DailyPricesResponse() when $default != null:
return $default(_that.date,_that.prices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyPricesResponse implements DailyPricesResponse {
  const _DailyPricesResponse({required this.date, final  List<DailyPriceItem>? prices}): _prices = prices;
  factory _DailyPricesResponse.fromJson(Map<String, dynamic> json) => _$DailyPricesResponseFromJson(json);

@override final  String date;
 final  List<DailyPriceItem>? _prices;
@override List<DailyPriceItem>? get prices {
  final value = _prices;
  if (value == null) return null;
  if (_prices is EqualUnmodifiableListView) return _prices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DailyPricesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyPricesResponseCopyWith<_DailyPricesResponse> get copyWith => __$DailyPricesResponseCopyWithImpl<_DailyPricesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyPricesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyPricesResponse&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._prices, _prices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_prices));

@override
String toString() {
  return 'DailyPricesResponse(date: $date, prices: $prices)';
}


}

/// @nodoc
abstract mixin class _$DailyPricesResponseCopyWith<$Res> implements $DailyPricesResponseCopyWith<$Res> {
  factory _$DailyPricesResponseCopyWith(_DailyPricesResponse value, $Res Function(_DailyPricesResponse) _then) = __$DailyPricesResponseCopyWithImpl;
@override @useResult
$Res call({
 String date, List<DailyPriceItem>? prices
});




}
/// @nodoc
class __$DailyPricesResponseCopyWithImpl<$Res>
    implements _$DailyPricesResponseCopyWith<$Res> {
  __$DailyPricesResponseCopyWithImpl(this._self, this._then);

  final _DailyPricesResponse _self;
  final $Res Function(_DailyPricesResponse) _then;

/// Create a copy of DailyPricesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? prices = freezed,}) {
  return _then(_DailyPricesResponse(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,prices: freezed == prices ? _self._prices : prices // ignore: cast_nullable_to_non_nullable
as List<DailyPriceItem>?,
  ));
}


}

// dart format on

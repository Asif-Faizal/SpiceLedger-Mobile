// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryModel {

@JsonKey(name: 'total_quantity', fromJson: _doubleOrZero) double get totalQuantity;@JsonKey(name: 'total_value', fromJson: _doubleOrZero) double get totalValue;@JsonKey(name: 'current_pnl', fromJson: _doubleOrZero) double get currentPL;
/// Create a copy of InventoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryModelCopyWith<InventoryModel> get copyWith => _$InventoryModelCopyWithImpl<InventoryModel>(this as InventoryModel, _$identity);

  /// Serializes this InventoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryModel&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.totalValue, totalValue) || other.totalValue == totalValue)&&(identical(other.currentPL, currentPL) || other.currentPL == currentPL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalQuantity,totalValue,currentPL);

@override
String toString() {
  return 'InventoryModel(totalQuantity: $totalQuantity, totalValue: $totalValue, currentPL: $currentPL)';
}


}

/// @nodoc
abstract mixin class $InventoryModelCopyWith<$Res>  {
  factory $InventoryModelCopyWith(InventoryModel value, $Res Function(InventoryModel) _then) = _$InventoryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_quantity', fromJson: _doubleOrZero) double totalQuantity,@JsonKey(name: 'total_value', fromJson: _doubleOrZero) double totalValue,@JsonKey(name: 'current_pnl', fromJson: _doubleOrZero) double currentPL
});




}
/// @nodoc
class _$InventoryModelCopyWithImpl<$Res>
    implements $InventoryModelCopyWith<$Res> {
  _$InventoryModelCopyWithImpl(this._self, this._then);

  final InventoryModel _self;
  final $Res Function(InventoryModel) _then;

/// Create a copy of InventoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalQuantity = null,Object? totalValue = null,Object? currentPL = null,}) {
  return _then(_self.copyWith(
totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as double,totalValue: null == totalValue ? _self.totalValue : totalValue // ignore: cast_nullable_to_non_nullable
as double,currentPL: null == currentPL ? _self.currentPL : currentPL // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryModel].
extension InventoryModelPatterns on InventoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryModel value)  $default,){
final _that = this;
switch (_that) {
case _InventoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_quantity', fromJson: _doubleOrZero)  double totalQuantity, @JsonKey(name: 'total_value', fromJson: _doubleOrZero)  double totalValue, @JsonKey(name: 'current_pnl', fromJson: _doubleOrZero)  double currentPL)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryModel() when $default != null:
return $default(_that.totalQuantity,_that.totalValue,_that.currentPL);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_quantity', fromJson: _doubleOrZero)  double totalQuantity, @JsonKey(name: 'total_value', fromJson: _doubleOrZero)  double totalValue, @JsonKey(name: 'current_pnl', fromJson: _doubleOrZero)  double currentPL)  $default,) {final _that = this;
switch (_that) {
case _InventoryModel():
return $default(_that.totalQuantity,_that.totalValue,_that.currentPL);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_quantity', fromJson: _doubleOrZero)  double totalQuantity, @JsonKey(name: 'total_value', fromJson: _doubleOrZero)  double totalValue, @JsonKey(name: 'current_pnl', fromJson: _doubleOrZero)  double currentPL)?  $default,) {final _that = this;
switch (_that) {
case _InventoryModel() when $default != null:
return $default(_that.totalQuantity,_that.totalValue,_that.currentPL);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryModel implements InventoryModel {
  const _InventoryModel({@JsonKey(name: 'total_quantity', fromJson: _doubleOrZero) required this.totalQuantity, @JsonKey(name: 'total_value', fromJson: _doubleOrZero) required this.totalValue, @JsonKey(name: 'current_pnl', fromJson: _doubleOrZero) required this.currentPL});
  factory _InventoryModel.fromJson(Map<String, dynamic> json) => _$InventoryModelFromJson(json);

@override@JsonKey(name: 'total_quantity', fromJson: _doubleOrZero) final  double totalQuantity;
@override@JsonKey(name: 'total_value', fromJson: _doubleOrZero) final  double totalValue;
@override@JsonKey(name: 'current_pnl', fromJson: _doubleOrZero) final  double currentPL;

/// Create a copy of InventoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryModelCopyWith<_InventoryModel> get copyWith => __$InventoryModelCopyWithImpl<_InventoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryModel&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.totalValue, totalValue) || other.totalValue == totalValue)&&(identical(other.currentPL, currentPL) || other.currentPL == currentPL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalQuantity,totalValue,currentPL);

@override
String toString() {
  return 'InventoryModel(totalQuantity: $totalQuantity, totalValue: $totalValue, currentPL: $currentPL)';
}


}

/// @nodoc
abstract mixin class _$InventoryModelCopyWith<$Res> implements $InventoryModelCopyWith<$Res> {
  factory _$InventoryModelCopyWith(_InventoryModel value, $Res Function(_InventoryModel) _then) = __$InventoryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_quantity', fromJson: _doubleOrZero) double totalQuantity,@JsonKey(name: 'total_value', fromJson: _doubleOrZero) double totalValue,@JsonKey(name: 'current_pnl', fromJson: _doubleOrZero) double currentPL
});




}
/// @nodoc
class __$InventoryModelCopyWithImpl<$Res>
    implements _$InventoryModelCopyWith<$Res> {
  __$InventoryModelCopyWithImpl(this._self, this._then);

  final _InventoryModel _self;
  final $Res Function(_InventoryModel) _then;

/// Create a copy of InventoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalQuantity = null,Object? totalValue = null,Object? currentPL = null,}) {
  return _then(_InventoryModel(
totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as double,totalValue: null == totalValue ? _self.totalValue : totalValue // ignore: cast_nullable_to_non_nullable
as double,currentPL: null == currentPL ? _self.currentPL : currentPL // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

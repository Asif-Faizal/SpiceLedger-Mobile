// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardUsersSummary {

@JsonKey(name: 'total') int get total;@JsonKey(name: 'weekly_new') int get weeklyNew;@JsonKey(name: 'weekly_change_pct') double get weeklyChangePct;@JsonKey(name: 'monthly_change_pct') double get monthlyChangePct;
/// Create a copy of DashboardUsersSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardUsersSummaryCopyWith<DashboardUsersSummary> get copyWith => _$DashboardUsersSummaryCopyWithImpl<DashboardUsersSummary>(this as DashboardUsersSummary, _$identity);

  /// Serializes this DashboardUsersSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardUsersSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.weeklyNew, weeklyNew) || other.weeklyNew == weeklyNew)&&(identical(other.weeklyChangePct, weeklyChangePct) || other.weeklyChangePct == weeklyChangePct)&&(identical(other.monthlyChangePct, monthlyChangePct) || other.monthlyChangePct == monthlyChangePct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,weeklyNew,weeklyChangePct,monthlyChangePct);

@override
String toString() {
  return 'DashboardUsersSummary(total: $total, weeklyNew: $weeklyNew, weeklyChangePct: $weeklyChangePct, monthlyChangePct: $monthlyChangePct)';
}


}

/// @nodoc
abstract mixin class $DashboardUsersSummaryCopyWith<$Res>  {
  factory $DashboardUsersSummaryCopyWith(DashboardUsersSummary value, $Res Function(DashboardUsersSummary) _then) = _$DashboardUsersSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total') int total,@JsonKey(name: 'weekly_new') int weeklyNew,@JsonKey(name: 'weekly_change_pct') double weeklyChangePct,@JsonKey(name: 'monthly_change_pct') double monthlyChangePct
});




}
/// @nodoc
class _$DashboardUsersSummaryCopyWithImpl<$Res>
    implements $DashboardUsersSummaryCopyWith<$Res> {
  _$DashboardUsersSummaryCopyWithImpl(this._self, this._then);

  final DashboardUsersSummary _self;
  final $Res Function(DashboardUsersSummary) _then;

/// Create a copy of DashboardUsersSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? weeklyNew = null,Object? weeklyChangePct = null,Object? monthlyChangePct = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,weeklyNew: null == weeklyNew ? _self.weeklyNew : weeklyNew // ignore: cast_nullable_to_non_nullable
as int,weeklyChangePct: null == weeklyChangePct ? _self.weeklyChangePct : weeklyChangePct // ignore: cast_nullable_to_non_nullable
as double,monthlyChangePct: null == monthlyChangePct ? _self.monthlyChangePct : monthlyChangePct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardUsersSummary].
extension DashboardUsersSummaryPatterns on DashboardUsersSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardUsersSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardUsersSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardUsersSummary value)  $default,){
final _that = this;
switch (_that) {
case _DashboardUsersSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardUsersSummary value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardUsersSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total')  int total, @JsonKey(name: 'weekly_new')  int weeklyNew, @JsonKey(name: 'weekly_change_pct')  double weeklyChangePct, @JsonKey(name: 'monthly_change_pct')  double monthlyChangePct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardUsersSummary() when $default != null:
return $default(_that.total,_that.weeklyNew,_that.weeklyChangePct,_that.monthlyChangePct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total')  int total, @JsonKey(name: 'weekly_new')  int weeklyNew, @JsonKey(name: 'weekly_change_pct')  double weeklyChangePct, @JsonKey(name: 'monthly_change_pct')  double monthlyChangePct)  $default,) {final _that = this;
switch (_that) {
case _DashboardUsersSummary():
return $default(_that.total,_that.weeklyNew,_that.weeklyChangePct,_that.monthlyChangePct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total')  int total, @JsonKey(name: 'weekly_new')  int weeklyNew, @JsonKey(name: 'weekly_change_pct')  double weeklyChangePct, @JsonKey(name: 'monthly_change_pct')  double monthlyChangePct)?  $default,) {final _that = this;
switch (_that) {
case _DashboardUsersSummary() when $default != null:
return $default(_that.total,_that.weeklyNew,_that.weeklyChangePct,_that.monthlyChangePct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardUsersSummary implements DashboardUsersSummary {
  const _DashboardUsersSummary({@JsonKey(name: 'total') required this.total, @JsonKey(name: 'weekly_new') required this.weeklyNew, @JsonKey(name: 'weekly_change_pct') required this.weeklyChangePct, @JsonKey(name: 'monthly_change_pct') required this.monthlyChangePct});
  factory _DashboardUsersSummary.fromJson(Map<String, dynamic> json) => _$DashboardUsersSummaryFromJson(json);

@override@JsonKey(name: 'total') final  int total;
@override@JsonKey(name: 'weekly_new') final  int weeklyNew;
@override@JsonKey(name: 'weekly_change_pct') final  double weeklyChangePct;
@override@JsonKey(name: 'monthly_change_pct') final  double monthlyChangePct;

/// Create a copy of DashboardUsersSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardUsersSummaryCopyWith<_DashboardUsersSummary> get copyWith => __$DashboardUsersSummaryCopyWithImpl<_DashboardUsersSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardUsersSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardUsersSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.weeklyNew, weeklyNew) || other.weeklyNew == weeklyNew)&&(identical(other.weeklyChangePct, weeklyChangePct) || other.weeklyChangePct == weeklyChangePct)&&(identical(other.monthlyChangePct, monthlyChangePct) || other.monthlyChangePct == monthlyChangePct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,weeklyNew,weeklyChangePct,monthlyChangePct);

@override
String toString() {
  return 'DashboardUsersSummary(total: $total, weeklyNew: $weeklyNew, weeklyChangePct: $weeklyChangePct, monthlyChangePct: $monthlyChangePct)';
}


}

/// @nodoc
abstract mixin class _$DashboardUsersSummaryCopyWith<$Res> implements $DashboardUsersSummaryCopyWith<$Res> {
  factory _$DashboardUsersSummaryCopyWith(_DashboardUsersSummary value, $Res Function(_DashboardUsersSummary) _then) = __$DashboardUsersSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total') int total,@JsonKey(name: 'weekly_new') int weeklyNew,@JsonKey(name: 'weekly_change_pct') double weeklyChangePct,@JsonKey(name: 'monthly_change_pct') double monthlyChangePct
});




}
/// @nodoc
class __$DashboardUsersSummaryCopyWithImpl<$Res>
    implements _$DashboardUsersSummaryCopyWith<$Res> {
  __$DashboardUsersSummaryCopyWithImpl(this._self, this._then);

  final _DashboardUsersSummary _self;
  final $Res Function(_DashboardUsersSummary) _then;

/// Create a copy of DashboardUsersSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? weeklyNew = null,Object? weeklyChangePct = null,Object? monthlyChangePct = null,}) {
  return _then(_DashboardUsersSummary(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,weeklyNew: null == weeklyNew ? _self.weeklyNew : weeklyNew // ignore: cast_nullable_to_non_nullable
as int,weeklyChangePct: null == weeklyChangePct ? _self.weeklyChangePct : weeklyChangePct // ignore: cast_nullable_to_non_nullable
as double,monthlyChangePct: null == monthlyChangePct ? _self.monthlyChangePct : monthlyChangePct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$DashboardProductsSummary {

@JsonKey(name: 'total') int get total;@JsonKey(name: 'monthly_change_pct') double get monthlyChangePct;
/// Create a copy of DashboardProductsSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardProductsSummaryCopyWith<DashboardProductsSummary> get copyWith => _$DashboardProductsSummaryCopyWithImpl<DashboardProductsSummary>(this as DashboardProductsSummary, _$identity);

  /// Serializes this DashboardProductsSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardProductsSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.monthlyChangePct, monthlyChangePct) || other.monthlyChangePct == monthlyChangePct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,monthlyChangePct);

@override
String toString() {
  return 'DashboardProductsSummary(total: $total, monthlyChangePct: $monthlyChangePct)';
}


}

/// @nodoc
abstract mixin class $DashboardProductsSummaryCopyWith<$Res>  {
  factory $DashboardProductsSummaryCopyWith(DashboardProductsSummary value, $Res Function(DashboardProductsSummary) _then) = _$DashboardProductsSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total') int total,@JsonKey(name: 'monthly_change_pct') double monthlyChangePct
});




}
/// @nodoc
class _$DashboardProductsSummaryCopyWithImpl<$Res>
    implements $DashboardProductsSummaryCopyWith<$Res> {
  _$DashboardProductsSummaryCopyWithImpl(this._self, this._then);

  final DashboardProductsSummary _self;
  final $Res Function(DashboardProductsSummary) _then;

/// Create a copy of DashboardProductsSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? monthlyChangePct = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,monthlyChangePct: null == monthlyChangePct ? _self.monthlyChangePct : monthlyChangePct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardProductsSummary].
extension DashboardProductsSummaryPatterns on DashboardProductsSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardProductsSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardProductsSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardProductsSummary value)  $default,){
final _that = this;
switch (_that) {
case _DashboardProductsSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardProductsSummary value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardProductsSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total')  int total, @JsonKey(name: 'monthly_change_pct')  double monthlyChangePct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardProductsSummary() when $default != null:
return $default(_that.total,_that.monthlyChangePct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total')  int total, @JsonKey(name: 'monthly_change_pct')  double monthlyChangePct)  $default,) {final _that = this;
switch (_that) {
case _DashboardProductsSummary():
return $default(_that.total,_that.monthlyChangePct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total')  int total, @JsonKey(name: 'monthly_change_pct')  double monthlyChangePct)?  $default,) {final _that = this;
switch (_that) {
case _DashboardProductsSummary() when $default != null:
return $default(_that.total,_that.monthlyChangePct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardProductsSummary implements DashboardProductsSummary {
  const _DashboardProductsSummary({@JsonKey(name: 'total') required this.total, @JsonKey(name: 'monthly_change_pct') required this.monthlyChangePct});
  factory _DashboardProductsSummary.fromJson(Map<String, dynamic> json) => _$DashboardProductsSummaryFromJson(json);

@override@JsonKey(name: 'total') final  int total;
@override@JsonKey(name: 'monthly_change_pct') final  double monthlyChangePct;

/// Create a copy of DashboardProductsSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardProductsSummaryCopyWith<_DashboardProductsSummary> get copyWith => __$DashboardProductsSummaryCopyWithImpl<_DashboardProductsSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardProductsSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardProductsSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.monthlyChangePct, monthlyChangePct) || other.monthlyChangePct == monthlyChangePct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,monthlyChangePct);

@override
String toString() {
  return 'DashboardProductsSummary(total: $total, monthlyChangePct: $monthlyChangePct)';
}


}

/// @nodoc
abstract mixin class _$DashboardProductsSummaryCopyWith<$Res> implements $DashboardProductsSummaryCopyWith<$Res> {
  factory _$DashboardProductsSummaryCopyWith(_DashboardProductsSummary value, $Res Function(_DashboardProductsSummary) _then) = __$DashboardProductsSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total') int total,@JsonKey(name: 'monthly_change_pct') double monthlyChangePct
});




}
/// @nodoc
class __$DashboardProductsSummaryCopyWithImpl<$Res>
    implements _$DashboardProductsSummaryCopyWith<$Res> {
  __$DashboardProductsSummaryCopyWithImpl(this._self, this._then);

  final _DashboardProductsSummary _self;
  final $Res Function(_DashboardProductsSummary) _then;

/// Create a copy of DashboardProductsSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? monthlyChangePct = null,}) {
  return _then(_DashboardProductsSummary(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,monthlyChangePct: null == monthlyChangePct ? _self.monthlyChangePct : monthlyChangePct // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$DashboardGradesSummary {

@JsonKey(name: 'total') int get total;
/// Create a copy of DashboardGradesSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardGradesSummaryCopyWith<DashboardGradesSummary> get copyWith => _$DashboardGradesSummaryCopyWithImpl<DashboardGradesSummary>(this as DashboardGradesSummary, _$identity);

  /// Serializes this DashboardGradesSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardGradesSummary&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total);

@override
String toString() {
  return 'DashboardGradesSummary(total: $total)';
}


}

/// @nodoc
abstract mixin class $DashboardGradesSummaryCopyWith<$Res>  {
  factory $DashboardGradesSummaryCopyWith(DashboardGradesSummary value, $Res Function(DashboardGradesSummary) _then) = _$DashboardGradesSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total') int total
});




}
/// @nodoc
class _$DashboardGradesSummaryCopyWithImpl<$Res>
    implements $DashboardGradesSummaryCopyWith<$Res> {
  _$DashboardGradesSummaryCopyWithImpl(this._self, this._then);

  final DashboardGradesSummary _self;
  final $Res Function(DashboardGradesSummary) _then;

/// Create a copy of DashboardGradesSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardGradesSummary].
extension DashboardGradesSummaryPatterns on DashboardGradesSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardGradesSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardGradesSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardGradesSummary value)  $default,){
final _that = this;
switch (_that) {
case _DashboardGradesSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardGradesSummary value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardGradesSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total')  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardGradesSummary() when $default != null:
return $default(_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total')  int total)  $default,) {final _that = this;
switch (_that) {
case _DashboardGradesSummary():
return $default(_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total')  int total)?  $default,) {final _that = this;
switch (_that) {
case _DashboardGradesSummary() when $default != null:
return $default(_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardGradesSummary implements DashboardGradesSummary {
  const _DashboardGradesSummary({@JsonKey(name: 'total') required this.total});
  factory _DashboardGradesSummary.fromJson(Map<String, dynamic> json) => _$DashboardGradesSummaryFromJson(json);

@override@JsonKey(name: 'total') final  int total;

/// Create a copy of DashboardGradesSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardGradesSummaryCopyWith<_DashboardGradesSummary> get copyWith => __$DashboardGradesSummaryCopyWithImpl<_DashboardGradesSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardGradesSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardGradesSummary&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total);

@override
String toString() {
  return 'DashboardGradesSummary(total: $total)';
}


}

/// @nodoc
abstract mixin class _$DashboardGradesSummaryCopyWith<$Res> implements $DashboardGradesSummaryCopyWith<$Res> {
  factory _$DashboardGradesSummaryCopyWith(_DashboardGradesSummary value, $Res Function(_DashboardGradesSummary) _then) = __$DashboardGradesSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total') int total
});




}
/// @nodoc
class __$DashboardGradesSummaryCopyWithImpl<$Res>
    implements _$DashboardGradesSummaryCopyWith<$Res> {
  __$DashboardGradesSummaryCopyWithImpl(this._self, this._then);

  final _DashboardGradesSummary _self;
  final $Res Function(_DashboardGradesSummary) _then;

/// Create a copy of DashboardGradesSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,}) {
  return _then(_DashboardGradesSummary(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DashboardPriceUpdate {

@JsonKey(name: 'date') String get date;@JsonKey(name: 'product_id') String get productId;@JsonKey(name: 'product') String get product;@JsonKey(name: 'grade_id') String get gradeId;@JsonKey(name: 'grade') String get grade;@JsonKey(name: 'price', fromJson: _doubleOrZero) double get price;@JsonKey(name: 'previous_date') String get previousDate;@JsonKey(name: 'previous_price', fromJson: _doubleOrZero) double get previousPrice;@JsonKey(name: 'change_delta', fromJson: _doubleOrZero) double get changeDelta;@JsonKey(name: 'change_percent', fromJson: _doubleOrZero) double get changePercent;
/// Create a copy of DashboardPriceUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardPriceUpdateCopyWith<DashboardPriceUpdate> get copyWith => _$DashboardPriceUpdateCopyWithImpl<DashboardPriceUpdate>(this as DashboardPriceUpdate, _$identity);

  /// Serializes this DashboardPriceUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardPriceUpdate&&(identical(other.date, date) || other.date == date)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.product, product) || other.product == product)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.price, price) || other.price == price)&&(identical(other.previousDate, previousDate) || other.previousDate == previousDate)&&(identical(other.previousPrice, previousPrice) || other.previousPrice == previousPrice)&&(identical(other.changeDelta, changeDelta) || other.changeDelta == changeDelta)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,productId,product,gradeId,grade,price,previousDate,previousPrice,changeDelta,changePercent);

@override
String toString() {
  return 'DashboardPriceUpdate(date: $date, productId: $productId, product: $product, gradeId: $gradeId, grade: $grade, price: $price, previousDate: $previousDate, previousPrice: $previousPrice, changeDelta: $changeDelta, changePercent: $changePercent)';
}


}

/// @nodoc
abstract mixin class $DashboardPriceUpdateCopyWith<$Res>  {
  factory $DashboardPriceUpdateCopyWith(DashboardPriceUpdate value, $Res Function(DashboardPriceUpdate) _then) = _$DashboardPriceUpdateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'date') String date,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product') String product,@JsonKey(name: 'grade_id') String gradeId,@JsonKey(name: 'grade') String grade,@JsonKey(name: 'price', fromJson: _doubleOrZero) double price,@JsonKey(name: 'previous_date') String previousDate,@JsonKey(name: 'previous_price', fromJson: _doubleOrZero) double previousPrice,@JsonKey(name: 'change_delta', fromJson: _doubleOrZero) double changeDelta,@JsonKey(name: 'change_percent', fromJson: _doubleOrZero) double changePercent
});




}
/// @nodoc
class _$DashboardPriceUpdateCopyWithImpl<$Res>
    implements $DashboardPriceUpdateCopyWith<$Res> {
  _$DashboardPriceUpdateCopyWithImpl(this._self, this._then);

  final DashboardPriceUpdate _self;
  final $Res Function(DashboardPriceUpdate) _then;

/// Create a copy of DashboardPriceUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? productId = null,Object? product = null,Object? gradeId = null,Object? grade = null,Object? price = null,Object? previousDate = null,Object? previousPrice = null,Object? changeDelta = null,Object? changePercent = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String,gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,previousDate: null == previousDate ? _self.previousDate : previousDate // ignore: cast_nullable_to_non_nullable
as String,previousPrice: null == previousPrice ? _self.previousPrice : previousPrice // ignore: cast_nullable_to_non_nullable
as double,changeDelta: null == changeDelta ? _self.changeDelta : changeDelta // ignore: cast_nullable_to_non_nullable
as double,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardPriceUpdate].
extension DashboardPriceUpdatePatterns on DashboardPriceUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardPriceUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardPriceUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardPriceUpdate value)  $default,){
final _that = this;
switch (_that) {
case _DashboardPriceUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardPriceUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardPriceUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'date')  String date, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product')  String product, @JsonKey(name: 'grade_id')  String gradeId, @JsonKey(name: 'grade')  String grade, @JsonKey(name: 'price', fromJson: _doubleOrZero)  double price, @JsonKey(name: 'previous_date')  String previousDate, @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)  double previousPrice, @JsonKey(name: 'change_delta', fromJson: _doubleOrZero)  double changeDelta, @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)  double changePercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardPriceUpdate() when $default != null:
return $default(_that.date,_that.productId,_that.product,_that.gradeId,_that.grade,_that.price,_that.previousDate,_that.previousPrice,_that.changeDelta,_that.changePercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'date')  String date, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product')  String product, @JsonKey(name: 'grade_id')  String gradeId, @JsonKey(name: 'grade')  String grade, @JsonKey(name: 'price', fromJson: _doubleOrZero)  double price, @JsonKey(name: 'previous_date')  String previousDate, @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)  double previousPrice, @JsonKey(name: 'change_delta', fromJson: _doubleOrZero)  double changeDelta, @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)  double changePercent)  $default,) {final _that = this;
switch (_that) {
case _DashboardPriceUpdate():
return $default(_that.date,_that.productId,_that.product,_that.gradeId,_that.grade,_that.price,_that.previousDate,_that.previousPrice,_that.changeDelta,_that.changePercent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'date')  String date, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product')  String product, @JsonKey(name: 'grade_id')  String gradeId, @JsonKey(name: 'grade')  String grade, @JsonKey(name: 'price', fromJson: _doubleOrZero)  double price, @JsonKey(name: 'previous_date')  String previousDate, @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)  double previousPrice, @JsonKey(name: 'change_delta', fromJson: _doubleOrZero)  double changeDelta, @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)  double changePercent)?  $default,) {final _that = this;
switch (_that) {
case _DashboardPriceUpdate() when $default != null:
return $default(_that.date,_that.productId,_that.product,_that.gradeId,_that.grade,_that.price,_that.previousDate,_that.previousPrice,_that.changeDelta,_that.changePercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardPriceUpdate implements DashboardPriceUpdate {
  const _DashboardPriceUpdate({@JsonKey(name: 'date') required this.date, @JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'product') required this.product, @JsonKey(name: 'grade_id') required this.gradeId, @JsonKey(name: 'grade') required this.grade, @JsonKey(name: 'price', fromJson: _doubleOrZero) required this.price, @JsonKey(name: 'previous_date') required this.previousDate, @JsonKey(name: 'previous_price', fromJson: _doubleOrZero) required this.previousPrice, @JsonKey(name: 'change_delta', fromJson: _doubleOrZero) required this.changeDelta, @JsonKey(name: 'change_percent', fromJson: _doubleOrZero) required this.changePercent});
  factory _DashboardPriceUpdate.fromJson(Map<String, dynamic> json) => _$DashboardPriceUpdateFromJson(json);

@override@JsonKey(name: 'date') final  String date;
@override@JsonKey(name: 'product_id') final  String productId;
@override@JsonKey(name: 'product') final  String product;
@override@JsonKey(name: 'grade_id') final  String gradeId;
@override@JsonKey(name: 'grade') final  String grade;
@override@JsonKey(name: 'price', fromJson: _doubleOrZero) final  double price;
@override@JsonKey(name: 'previous_date') final  String previousDate;
@override@JsonKey(name: 'previous_price', fromJson: _doubleOrZero) final  double previousPrice;
@override@JsonKey(name: 'change_delta', fromJson: _doubleOrZero) final  double changeDelta;
@override@JsonKey(name: 'change_percent', fromJson: _doubleOrZero) final  double changePercent;

/// Create a copy of DashboardPriceUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardPriceUpdateCopyWith<_DashboardPriceUpdate> get copyWith => __$DashboardPriceUpdateCopyWithImpl<_DashboardPriceUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardPriceUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardPriceUpdate&&(identical(other.date, date) || other.date == date)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.product, product) || other.product == product)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.price, price) || other.price == price)&&(identical(other.previousDate, previousDate) || other.previousDate == previousDate)&&(identical(other.previousPrice, previousPrice) || other.previousPrice == previousPrice)&&(identical(other.changeDelta, changeDelta) || other.changeDelta == changeDelta)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,productId,product,gradeId,grade,price,previousDate,previousPrice,changeDelta,changePercent);

@override
String toString() {
  return 'DashboardPriceUpdate(date: $date, productId: $productId, product: $product, gradeId: $gradeId, grade: $grade, price: $price, previousDate: $previousDate, previousPrice: $previousPrice, changeDelta: $changeDelta, changePercent: $changePercent)';
}


}

/// @nodoc
abstract mixin class _$DashboardPriceUpdateCopyWith<$Res> implements $DashboardPriceUpdateCopyWith<$Res> {
  factory _$DashboardPriceUpdateCopyWith(_DashboardPriceUpdate value, $Res Function(_DashboardPriceUpdate) _then) = __$DashboardPriceUpdateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'date') String date,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product') String product,@JsonKey(name: 'grade_id') String gradeId,@JsonKey(name: 'grade') String grade,@JsonKey(name: 'price', fromJson: _doubleOrZero) double price,@JsonKey(name: 'previous_date') String previousDate,@JsonKey(name: 'previous_price', fromJson: _doubleOrZero) double previousPrice,@JsonKey(name: 'change_delta', fromJson: _doubleOrZero) double changeDelta,@JsonKey(name: 'change_percent', fromJson: _doubleOrZero) double changePercent
});




}
/// @nodoc
class __$DashboardPriceUpdateCopyWithImpl<$Res>
    implements _$DashboardPriceUpdateCopyWith<$Res> {
  __$DashboardPriceUpdateCopyWithImpl(this._self, this._then);

  final _DashboardPriceUpdate _self;
  final $Res Function(_DashboardPriceUpdate) _then;

/// Create a copy of DashboardPriceUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? productId = null,Object? product = null,Object? gradeId = null,Object? grade = null,Object? price = null,Object? previousDate = null,Object? previousPrice = null,Object? changeDelta = null,Object? changePercent = null,}) {
  return _then(_DashboardPriceUpdate(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String,gradeId: null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,previousDate: null == previousDate ? _self.previousDate : previousDate // ignore: cast_nullable_to_non_nullable
as String,previousPrice: null == previousPrice ? _self.previousPrice : previousPrice // ignore: cast_nullable_to_non_nullable
as double,changeDelta: null == changeDelta ? _self.changeDelta : changeDelta // ignore: cast_nullable_to_non_nullable
as double,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$DashboardResponse {

@JsonKey(name: 'date') String get date;@JsonKey(name: 'users') DashboardUsersSummary get users;@JsonKey(name: 'products') DashboardProductsSummary get products;@JsonKey(name: 'grades') DashboardGradesSummary get grades;@JsonKey(name: 'total_items') int get totalItems;@JsonKey(name: 'price_updates') List<DashboardPriceUpdate> get priceUpdates;
/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardResponseCopyWith<DashboardResponse> get copyWith => _$DashboardResponseCopyWithImpl<DashboardResponse>(this as DashboardResponse, _$identity);

  /// Serializes this DashboardResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardResponse&&(identical(other.date, date) || other.date == date)&&(identical(other.users, users) || other.users == users)&&(identical(other.products, products) || other.products == products)&&(identical(other.grades, grades) || other.grades == grades)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&const DeepCollectionEquality().equals(other.priceUpdates, priceUpdates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,users,products,grades,totalItems,const DeepCollectionEquality().hash(priceUpdates));

@override
String toString() {
  return 'DashboardResponse(date: $date, users: $users, products: $products, grades: $grades, totalItems: $totalItems, priceUpdates: $priceUpdates)';
}


}

/// @nodoc
abstract mixin class $DashboardResponseCopyWith<$Res>  {
  factory $DashboardResponseCopyWith(DashboardResponse value, $Res Function(DashboardResponse) _then) = _$DashboardResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'date') String date,@JsonKey(name: 'users') DashboardUsersSummary users,@JsonKey(name: 'products') DashboardProductsSummary products,@JsonKey(name: 'grades') DashboardGradesSummary grades,@JsonKey(name: 'total_items') int totalItems,@JsonKey(name: 'price_updates') List<DashboardPriceUpdate> priceUpdates
});


$DashboardUsersSummaryCopyWith<$Res> get users;$DashboardProductsSummaryCopyWith<$Res> get products;$DashboardGradesSummaryCopyWith<$Res> get grades;

}
/// @nodoc
class _$DashboardResponseCopyWithImpl<$Res>
    implements $DashboardResponseCopyWith<$Res> {
  _$DashboardResponseCopyWithImpl(this._self, this._then);

  final DashboardResponse _self;
  final $Res Function(DashboardResponse) _then;

/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? users = null,Object? products = null,Object? grades = null,Object? totalItems = null,Object? priceUpdates = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as DashboardUsersSummary,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as DashboardProductsSummary,grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as DashboardGradesSummary,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,priceUpdates: null == priceUpdates ? _self.priceUpdates : priceUpdates // ignore: cast_nullable_to_non_nullable
as List<DashboardPriceUpdate>,
  ));
}
/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardUsersSummaryCopyWith<$Res> get users {
  
  return $DashboardUsersSummaryCopyWith<$Res>(_self.users, (value) {
    return _then(_self.copyWith(users: value));
  });
}/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardProductsSummaryCopyWith<$Res> get products {
  
  return $DashboardProductsSummaryCopyWith<$Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardGradesSummaryCopyWith<$Res> get grades {
  
  return $DashboardGradesSummaryCopyWith<$Res>(_self.grades, (value) {
    return _then(_self.copyWith(grades: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardResponse].
extension DashboardResponsePatterns on DashboardResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardResponse value)  $default,){
final _that = this;
switch (_that) {
case _DashboardResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'date')  String date, @JsonKey(name: 'users')  DashboardUsersSummary users, @JsonKey(name: 'products')  DashboardProductsSummary products, @JsonKey(name: 'grades')  DashboardGradesSummary grades, @JsonKey(name: 'total_items')  int totalItems, @JsonKey(name: 'price_updates')  List<DashboardPriceUpdate> priceUpdates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardResponse() when $default != null:
return $default(_that.date,_that.users,_that.products,_that.grades,_that.totalItems,_that.priceUpdates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'date')  String date, @JsonKey(name: 'users')  DashboardUsersSummary users, @JsonKey(name: 'products')  DashboardProductsSummary products, @JsonKey(name: 'grades')  DashboardGradesSummary grades, @JsonKey(name: 'total_items')  int totalItems, @JsonKey(name: 'price_updates')  List<DashboardPriceUpdate> priceUpdates)  $default,) {final _that = this;
switch (_that) {
case _DashboardResponse():
return $default(_that.date,_that.users,_that.products,_that.grades,_that.totalItems,_that.priceUpdates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'date')  String date, @JsonKey(name: 'users')  DashboardUsersSummary users, @JsonKey(name: 'products')  DashboardProductsSummary products, @JsonKey(name: 'grades')  DashboardGradesSummary grades, @JsonKey(name: 'total_items')  int totalItems, @JsonKey(name: 'price_updates')  List<DashboardPriceUpdate> priceUpdates)?  $default,) {final _that = this;
switch (_that) {
case _DashboardResponse() when $default != null:
return $default(_that.date,_that.users,_that.products,_that.grades,_that.totalItems,_that.priceUpdates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardResponse implements DashboardResponse {
  const _DashboardResponse({@JsonKey(name: 'date') required this.date, @JsonKey(name: 'users') required this.users, @JsonKey(name: 'products') required this.products, @JsonKey(name: 'grades') required this.grades, @JsonKey(name: 'total_items') required this.totalItems, @JsonKey(name: 'price_updates') required final  List<DashboardPriceUpdate> priceUpdates}): _priceUpdates = priceUpdates;
  factory _DashboardResponse.fromJson(Map<String, dynamic> json) => _$DashboardResponseFromJson(json);

@override@JsonKey(name: 'date') final  String date;
@override@JsonKey(name: 'users') final  DashboardUsersSummary users;
@override@JsonKey(name: 'products') final  DashboardProductsSummary products;
@override@JsonKey(name: 'grades') final  DashboardGradesSummary grades;
@override@JsonKey(name: 'total_items') final  int totalItems;
 final  List<DashboardPriceUpdate> _priceUpdates;
@override@JsonKey(name: 'price_updates') List<DashboardPriceUpdate> get priceUpdates {
  if (_priceUpdates is EqualUnmodifiableListView) return _priceUpdates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_priceUpdates);
}


/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardResponseCopyWith<_DashboardResponse> get copyWith => __$DashboardResponseCopyWithImpl<_DashboardResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardResponse&&(identical(other.date, date) || other.date == date)&&(identical(other.users, users) || other.users == users)&&(identical(other.products, products) || other.products == products)&&(identical(other.grades, grades) || other.grades == grades)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&const DeepCollectionEquality().equals(other._priceUpdates, _priceUpdates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,users,products,grades,totalItems,const DeepCollectionEquality().hash(_priceUpdates));

@override
String toString() {
  return 'DashboardResponse(date: $date, users: $users, products: $products, grades: $grades, totalItems: $totalItems, priceUpdates: $priceUpdates)';
}


}

/// @nodoc
abstract mixin class _$DashboardResponseCopyWith<$Res> implements $DashboardResponseCopyWith<$Res> {
  factory _$DashboardResponseCopyWith(_DashboardResponse value, $Res Function(_DashboardResponse) _then) = __$DashboardResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'date') String date,@JsonKey(name: 'users') DashboardUsersSummary users,@JsonKey(name: 'products') DashboardProductsSummary products,@JsonKey(name: 'grades') DashboardGradesSummary grades,@JsonKey(name: 'total_items') int totalItems,@JsonKey(name: 'price_updates') List<DashboardPriceUpdate> priceUpdates
});


@override $DashboardUsersSummaryCopyWith<$Res> get users;@override $DashboardProductsSummaryCopyWith<$Res> get products;@override $DashboardGradesSummaryCopyWith<$Res> get grades;

}
/// @nodoc
class __$DashboardResponseCopyWithImpl<$Res>
    implements _$DashboardResponseCopyWith<$Res> {
  __$DashboardResponseCopyWithImpl(this._self, this._then);

  final _DashboardResponse _self;
  final $Res Function(_DashboardResponse) _then;

/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? users = null,Object? products = null,Object? grades = null,Object? totalItems = null,Object? priceUpdates = null,}) {
  return _then(_DashboardResponse(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as DashboardUsersSummary,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as DashboardProductsSummary,grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as DashboardGradesSummary,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,priceUpdates: null == priceUpdates ? _self._priceUpdates : priceUpdates // ignore: cast_nullable_to_non_nullable
as List<DashboardPriceUpdate>,
  ));
}

/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardUsersSummaryCopyWith<$Res> get users {
  
  return $DashboardUsersSummaryCopyWith<$Res>(_self.users, (value) {
    return _then(_self.copyWith(users: value));
  });
}/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardProductsSummaryCopyWith<$Res> get products {
  
  return $DashboardProductsSummaryCopyWith<$Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardGradesSummaryCopyWith<$Res> get grades {
  
  return $DashboardGradesSummaryCopyWith<$Res>(_self.grades, (value) {
    return _then(_self.copyWith(grades: value));
  });
}
}

// dart format on

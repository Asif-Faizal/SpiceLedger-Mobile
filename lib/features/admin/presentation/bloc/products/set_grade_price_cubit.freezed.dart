// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_grade_price_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetGradePriceState {

 DateTime get date; String get productId; List<GradeEntity> get grades; Map<String, double> get gradePrices; bool get isLoading; String? get errorMessage; bool get isSuccess;
/// Create a copy of SetGradePriceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetGradePriceStateCopyWith<SetGradePriceState> get copyWith => _$SetGradePriceStateCopyWithImpl<SetGradePriceState>(this as SetGradePriceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetGradePriceState&&(identical(other.date, date) || other.date == date)&&(identical(other.productId, productId) || other.productId == productId)&&const DeepCollectionEquality().equals(other.grades, grades)&&const DeepCollectionEquality().equals(other.gradePrices, gradePrices)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,date,productId,const DeepCollectionEquality().hash(grades),const DeepCollectionEquality().hash(gradePrices),isLoading,errorMessage,isSuccess);

@override
String toString() {
  return 'SetGradePriceState(date: $date, productId: $productId, grades: $grades, gradePrices: $gradePrices, isLoading: $isLoading, errorMessage: $errorMessage, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $SetGradePriceStateCopyWith<$Res>  {
  factory $SetGradePriceStateCopyWith(SetGradePriceState value, $Res Function(SetGradePriceState) _then) = _$SetGradePriceStateCopyWithImpl;
@useResult
$Res call({
 DateTime date, String productId, List<GradeEntity> grades, Map<String, double> gradePrices, bool isLoading, String? errorMessage, bool isSuccess
});




}
/// @nodoc
class _$SetGradePriceStateCopyWithImpl<$Res>
    implements $SetGradePriceStateCopyWith<$Res> {
  _$SetGradePriceStateCopyWithImpl(this._self, this._then);

  final SetGradePriceState _self;
  final $Res Function(SetGradePriceState) _then;

/// Create a copy of SetGradePriceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? productId = null,Object? grades = null,Object? gradePrices = null,Object? isLoading = null,Object? errorMessage = freezed,Object? isSuccess = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as List<GradeEntity>,gradePrices: null == gradePrices ? _self.gradePrices : gradePrices // ignore: cast_nullable_to_non_nullable
as Map<String, double>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SetGradePriceState].
extension SetGradePriceStatePatterns on SetGradePriceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetGradePriceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetGradePriceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetGradePriceState value)  $default,){
final _that = this;
switch (_that) {
case _SetGradePriceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetGradePriceState value)?  $default,){
final _that = this;
switch (_that) {
case _SetGradePriceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  String productId,  List<GradeEntity> grades,  Map<String, double> gradePrices,  bool isLoading,  String? errorMessage,  bool isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetGradePriceState() when $default != null:
return $default(_that.date,_that.productId,_that.grades,_that.gradePrices,_that.isLoading,_that.errorMessage,_that.isSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  String productId,  List<GradeEntity> grades,  Map<String, double> gradePrices,  bool isLoading,  String? errorMessage,  bool isSuccess)  $default,) {final _that = this;
switch (_that) {
case _SetGradePriceState():
return $default(_that.date,_that.productId,_that.grades,_that.gradePrices,_that.isLoading,_that.errorMessage,_that.isSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  String productId,  List<GradeEntity> grades,  Map<String, double> gradePrices,  bool isLoading,  String? errorMessage,  bool isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _SetGradePriceState() when $default != null:
return $default(_that.date,_that.productId,_that.grades,_that.gradePrices,_that.isLoading,_that.errorMessage,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _SetGradePriceState implements SetGradePriceState {
  const _SetGradePriceState({required this.date, required this.productId, required final  List<GradeEntity> grades, final  Map<String, double> gradePrices = const {}, this.isLoading = false, this.errorMessage, this.isSuccess = false}): _grades = grades,_gradePrices = gradePrices;
  

@override final  DateTime date;
@override final  String productId;
 final  List<GradeEntity> _grades;
@override List<GradeEntity> get grades {
  if (_grades is EqualUnmodifiableListView) return _grades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grades);
}

 final  Map<String, double> _gradePrices;
@override@JsonKey() Map<String, double> get gradePrices {
  if (_gradePrices is EqualUnmodifiableMapView) return _gradePrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_gradePrices);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override@JsonKey() final  bool isSuccess;

/// Create a copy of SetGradePriceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetGradePriceStateCopyWith<_SetGradePriceState> get copyWith => __$SetGradePriceStateCopyWithImpl<_SetGradePriceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetGradePriceState&&(identical(other.date, date) || other.date == date)&&(identical(other.productId, productId) || other.productId == productId)&&const DeepCollectionEquality().equals(other._grades, _grades)&&const DeepCollectionEquality().equals(other._gradePrices, _gradePrices)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,date,productId,const DeepCollectionEquality().hash(_grades),const DeepCollectionEquality().hash(_gradePrices),isLoading,errorMessage,isSuccess);

@override
String toString() {
  return 'SetGradePriceState(date: $date, productId: $productId, grades: $grades, gradePrices: $gradePrices, isLoading: $isLoading, errorMessage: $errorMessage, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$SetGradePriceStateCopyWith<$Res> implements $SetGradePriceStateCopyWith<$Res> {
  factory _$SetGradePriceStateCopyWith(_SetGradePriceState value, $Res Function(_SetGradePriceState) _then) = __$SetGradePriceStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, String productId, List<GradeEntity> grades, Map<String, double> gradePrices, bool isLoading, String? errorMessage, bool isSuccess
});




}
/// @nodoc
class __$SetGradePriceStateCopyWithImpl<$Res>
    implements _$SetGradePriceStateCopyWith<$Res> {
  __$SetGradePriceStateCopyWithImpl(this._self, this._then);

  final _SetGradePriceState _self;
  final $Res Function(_SetGradePriceState) _then;

/// Create a copy of SetGradePriceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? productId = null,Object? grades = null,Object? gradePrices = null,Object? isLoading = null,Object? errorMessage = freezed,Object? isSuccess = null,}) {
  return _then(_SetGradePriceState(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,grades: null == grades ? _self._grades : grades // ignore: cast_nullable_to_non_nullable
as List<GradeEntity>,gradePrices: null == gradePrices ? _self._gradePrices : gradePrices // ignore: cast_nullable_to_non_nullable
as Map<String, double>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

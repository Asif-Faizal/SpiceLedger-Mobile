// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GradeFormState {

 String get name; String get description; String get status; String? get selectedProductId;
/// Create a copy of GradeFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GradeFormStateCopyWith<GradeFormState> get copyWith => _$GradeFormStateCopyWithImpl<GradeFormState>(this as GradeFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GradeFormState&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedProductId, selectedProductId) || other.selectedProductId == selectedProductId));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,status,selectedProductId);

@override
String toString() {
  return 'GradeFormState(name: $name, description: $description, status: $status, selectedProductId: $selectedProductId)';
}


}

/// @nodoc
abstract mixin class $GradeFormStateCopyWith<$Res>  {
  factory $GradeFormStateCopyWith(GradeFormState value, $Res Function(GradeFormState) _then) = _$GradeFormStateCopyWithImpl;
@useResult
$Res call({
 String name, String description, String status, String? selectedProductId
});




}
/// @nodoc
class _$GradeFormStateCopyWithImpl<$Res>
    implements $GradeFormStateCopyWith<$Res> {
  _$GradeFormStateCopyWithImpl(this._self, this._then);

  final GradeFormState _self;
  final $Res Function(GradeFormState) _then;

/// Create a copy of GradeFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? status = null,Object? selectedProductId = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,selectedProductId: freezed == selectedProductId ? _self.selectedProductId : selectedProductId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GradeFormState].
extension GradeFormStatePatterns on GradeFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GradeFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GradeFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GradeFormState value)  $default,){
final _that = this;
switch (_that) {
case _GradeFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GradeFormState value)?  $default,){
final _that = this;
switch (_that) {
case _GradeFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description,  String status,  String? selectedProductId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GradeFormState() when $default != null:
return $default(_that.name,_that.description,_that.status,_that.selectedProductId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description,  String status,  String? selectedProductId)  $default,) {final _that = this;
switch (_that) {
case _GradeFormState():
return $default(_that.name,_that.description,_that.status,_that.selectedProductId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description,  String status,  String? selectedProductId)?  $default,) {final _that = this;
switch (_that) {
case _GradeFormState() when $default != null:
return $default(_that.name,_that.description,_that.status,_that.selectedProductId);case _:
  return null;

}
}

}

/// @nodoc


class _GradeFormState implements GradeFormState {
  const _GradeFormState({this.name = '', this.description = '', this.status = 'active', this.selectedProductId});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String description;
@override@JsonKey() final  String status;
@override final  String? selectedProductId;

/// Create a copy of GradeFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GradeFormStateCopyWith<_GradeFormState> get copyWith => __$GradeFormStateCopyWithImpl<_GradeFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GradeFormState&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedProductId, selectedProductId) || other.selectedProductId == selectedProductId));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,status,selectedProductId);

@override
String toString() {
  return 'GradeFormState(name: $name, description: $description, status: $status, selectedProductId: $selectedProductId)';
}


}

/// @nodoc
abstract mixin class _$GradeFormStateCopyWith<$Res> implements $GradeFormStateCopyWith<$Res> {
  factory _$GradeFormStateCopyWith(_GradeFormState value, $Res Function(_GradeFormState) _then) = __$GradeFormStateCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String status, String? selectedProductId
});




}
/// @nodoc
class __$GradeFormStateCopyWithImpl<$Res>
    implements _$GradeFormStateCopyWith<$Res> {
  __$GradeFormStateCopyWithImpl(this._self, this._then);

  final _GradeFormState _self;
  final $Res Function(_GradeFormState) _then;

/// Create a copy of GradeFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? status = null,Object? selectedProductId = freezed,}) {
  return _then(_GradeFormState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,selectedProductId: freezed == selectedProductId ? _self.selectedProductId : selectedProductId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

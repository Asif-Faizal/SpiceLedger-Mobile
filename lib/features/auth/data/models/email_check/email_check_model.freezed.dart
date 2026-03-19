// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_check_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailCheckModel {

 bool get exists;
/// Create a copy of EmailCheckModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailCheckModelCopyWith<EmailCheckModel> get copyWith => _$EmailCheckModelCopyWithImpl<EmailCheckModel>(this as EmailCheckModel, _$identity);

  /// Serializes this EmailCheckModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailCheckModel&&(identical(other.exists, exists) || other.exists == exists));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exists);

@override
String toString() {
  return 'EmailCheckModel(exists: $exists)';
}


}

/// @nodoc
abstract mixin class $EmailCheckModelCopyWith<$Res>  {
  factory $EmailCheckModelCopyWith(EmailCheckModel value, $Res Function(EmailCheckModel) _then) = _$EmailCheckModelCopyWithImpl;
@useResult
$Res call({
 bool exists
});




}
/// @nodoc
class _$EmailCheckModelCopyWithImpl<$Res>
    implements $EmailCheckModelCopyWith<$Res> {
  _$EmailCheckModelCopyWithImpl(this._self, this._then);

  final EmailCheckModel _self;
  final $Res Function(EmailCheckModel) _then;

/// Create a copy of EmailCheckModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exists = null,}) {
  return _then(_self.copyWith(
exists: null == exists ? _self.exists : exists // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EmailCheckModel].
extension EmailCheckModelPatterns on EmailCheckModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmailCheckModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailCheckModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmailCheckModel value)  $default,){
final _that = this;
switch (_that) {
case _EmailCheckModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmailCheckModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmailCheckModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool exists)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailCheckModel() when $default != null:
return $default(_that.exists);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool exists)  $default,) {final _that = this;
switch (_that) {
case _EmailCheckModel():
return $default(_that.exists);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool exists)?  $default,) {final _that = this;
switch (_that) {
case _EmailCheckModel() when $default != null:
return $default(_that.exists);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmailCheckModel implements EmailCheckModel {
  const _EmailCheckModel({required this.exists});
  factory _EmailCheckModel.fromJson(Map<String, dynamic> json) => _$EmailCheckModelFromJson(json);

@override final  bool exists;

/// Create a copy of EmailCheckModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailCheckModelCopyWith<_EmailCheckModel> get copyWith => __$EmailCheckModelCopyWithImpl<_EmailCheckModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmailCheckModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailCheckModel&&(identical(other.exists, exists) || other.exists == exists));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exists);

@override
String toString() {
  return 'EmailCheckModel(exists: $exists)';
}


}

/// @nodoc
abstract mixin class _$EmailCheckModelCopyWith<$Res> implements $EmailCheckModelCopyWith<$Res> {
  factory _$EmailCheckModelCopyWith(_EmailCheckModel value, $Res Function(_EmailCheckModel) _then) = __$EmailCheckModelCopyWithImpl;
@override @useResult
$Res call({
 bool exists
});




}
/// @nodoc
class __$EmailCheckModelCopyWithImpl<$Res>
    implements _$EmailCheckModelCopyWith<$Res> {
  __$EmailCheckModelCopyWithImpl(this._self, this._then);

  final _EmailCheckModel _self;
  final $Res Function(_EmailCheckModel) _then;

/// Create a copy of EmailCheckModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exists = null,}) {
  return _then(_EmailCheckModel(
exists: null == exists ? _self.exists : exists // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

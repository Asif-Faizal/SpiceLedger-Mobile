// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {

 String get userId;
/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEventCopyWith<ProfileEvent> get copyWith => _$ProfileEventCopyWithImpl<ProfileEvent>(this as ProfileEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProfileEvent(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ProfileEventCopyWith<$Res>  {
  factory $ProfileEventCopyWith(ProfileEvent value, $Res Function(ProfileEvent) _then) = _$ProfileEventCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._self, this._then);

  final ProfileEvent _self;
  final $Res Function(ProfileEvent) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProfileFetched value)?  profileFetched,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileFetched() when profileFetched != null:
return profileFetched(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProfileFetched value)  profileFetched,}){
final _that = this;
switch (_that) {
case _ProfileFetched():
return profileFetched(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProfileFetched value)?  profileFetched,}){
final _that = this;
switch (_that) {
case _ProfileFetched() when profileFetched != null:
return profileFetched(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  profileFetched,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileFetched() when profileFetched != null:
return profileFetched(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  profileFetched,}) {final _that = this;
switch (_that) {
case _ProfileFetched():
return profileFetched(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  profileFetched,}) {final _that = this;
switch (_that) {
case _ProfileFetched() when profileFetched != null:
return profileFetched(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileFetched implements ProfileEvent {
  const _ProfileFetched(this.userId);
  

@override final  String userId;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileFetchedCopyWith<_ProfileFetched> get copyWith => __$ProfileFetchedCopyWithImpl<_ProfileFetched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileFetched&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProfileEvent.profileFetched(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$ProfileFetchedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$ProfileFetchedCopyWith(_ProfileFetched value, $Res Function(_ProfileFetched) _then) = __$ProfileFetchedCopyWithImpl;
@override @useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$ProfileFetchedCopyWithImpl<$Res>
    implements _$ProfileFetchedCopyWith<$Res> {
  __$ProfileFetchedCopyWithImpl(this._self, this._then);

  final _ProfileFetched _self;
  final $Res Function(_ProfileFetched) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_ProfileFetched(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

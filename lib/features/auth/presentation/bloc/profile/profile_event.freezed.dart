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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProfileFetched value)?  profileFetched,TResult Function( _UpdateProfileRequested value)?  updateProfileRequested,TResult Function( _LogoutRequested value)?  logoutRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileFetched() when profileFetched != null:
return profileFetched(_that);case _UpdateProfileRequested() when updateProfileRequested != null:
return updateProfileRequested(_that);case _LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProfileFetched value)  profileFetched,required TResult Function( _UpdateProfileRequested value)  updateProfileRequested,required TResult Function( _LogoutRequested value)  logoutRequested,}){
final _that = this;
switch (_that) {
case _ProfileFetched():
return profileFetched(_that);case _UpdateProfileRequested():
return updateProfileRequested(_that);case _LogoutRequested():
return logoutRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProfileFetched value)?  profileFetched,TResult? Function( _UpdateProfileRequested value)?  updateProfileRequested,TResult? Function( _LogoutRequested value)?  logoutRequested,}){
final _that = this;
switch (_that) {
case _ProfileFetched() when profileFetched != null:
return profileFetched(_that);case _UpdateProfileRequested() when updateProfileRequested != null:
return updateProfileRequested(_that);case _LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  profileFetched,TResult Function( String name,  String email)?  updateProfileRequested,TResult Function()?  logoutRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileFetched() when profileFetched != null:
return profileFetched();case _UpdateProfileRequested() when updateProfileRequested != null:
return updateProfileRequested(_that.name,_that.email);case _LogoutRequested() when logoutRequested != null:
return logoutRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  profileFetched,required TResult Function( String name,  String email)  updateProfileRequested,required TResult Function()  logoutRequested,}) {final _that = this;
switch (_that) {
case _ProfileFetched():
return profileFetched();case _UpdateProfileRequested():
return updateProfileRequested(_that.name,_that.email);case _LogoutRequested():
return logoutRequested();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  profileFetched,TResult? Function( String name,  String email)?  updateProfileRequested,TResult? Function()?  logoutRequested,}) {final _that = this;
switch (_that) {
case _ProfileFetched() when profileFetched != null:
return profileFetched();case _UpdateProfileRequested() when updateProfileRequested != null:
return updateProfileRequested(_that.name,_that.email);case _LogoutRequested() when logoutRequested != null:
return logoutRequested();case _:
  return null;

}
}

}

/// @nodoc


class _ProfileFetched implements ProfileEvent {
  const _ProfileFetched();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileFetched);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.profileFetched()';
}


}




/// @nodoc


class _UpdateProfileRequested implements ProfileEvent {
  const _UpdateProfileRequested(this.name, this.email);
  

 final  String name;
 final  String email;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileRequestedCopyWith<_UpdateProfileRequested> get copyWith => __$UpdateProfileRequestedCopyWithImpl<_UpdateProfileRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileRequested&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,name,email);

@override
String toString() {
  return 'ProfileEvent.updateProfileRequested(name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileRequestedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$UpdateProfileRequestedCopyWith(_UpdateProfileRequested value, $Res Function(_UpdateProfileRequested) _then) = __$UpdateProfileRequestedCopyWithImpl;
@useResult
$Res call({
 String name, String email
});




}
/// @nodoc
class __$UpdateProfileRequestedCopyWithImpl<$Res>
    implements _$UpdateProfileRequestedCopyWith<$Res> {
  __$UpdateProfileRequestedCopyWithImpl(this._self, this._then);

  final _UpdateProfileRequested _self;
  final $Res Function(_UpdateProfileRequested) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,}) {
  return _then(_UpdateProfileRequested(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LogoutRequested implements ProfileEvent {
  const _LogoutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.logoutRequested()';
}


}




// dart format on

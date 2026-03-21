// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_products_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminProductsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductsEvent()';
}


}

/// @nodoc
class $AdminProductsEventCopyWith<$Res>  {
$AdminProductsEventCopyWith(AdminProductsEvent _, $Res Function(AdminProductsEvent) __);
}


/// Adds pattern-matching-related methods to [AdminProductsEvent].
extension AdminProductsEventPatterns on AdminProductsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchProducts value)?  fetchProducts,TResult Function( _Refresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchProducts() when fetchProducts != null:
return fetchProducts(_that);case _Refresh() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchProducts value)  fetchProducts,required TResult Function( _Refresh value)  refresh,}){
final _that = this;
switch (_that) {
case _FetchProducts():
return fetchProducts(_that);case _Refresh():
return refresh(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchProducts value)?  fetchProducts,TResult? Function( _Refresh value)?  refresh,}){
final _that = this;
switch (_that) {
case _FetchProducts() when fetchProducts != null:
return fetchProducts(_that);case _Refresh() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? date,  String? search)?  fetchProducts,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchProducts() when fetchProducts != null:
return fetchProducts(_that.date,_that.search);case _Refresh() when refresh != null:
return refresh();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? date,  String? search)  fetchProducts,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case _FetchProducts():
return fetchProducts(_that.date,_that.search);case _Refresh():
return refresh();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? date,  String? search)?  fetchProducts,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case _FetchProducts() when fetchProducts != null:
return fetchProducts(_that.date,_that.search);case _Refresh() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class _FetchProducts implements AdminProductsEvent {
  const _FetchProducts({this.date, this.search});
  

 final  String? date;
 final  String? search;

/// Create a copy of AdminProductsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchProductsCopyWith<_FetchProducts> get copyWith => __$FetchProductsCopyWithImpl<_FetchProducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchProducts&&(identical(other.date, date) || other.date == date)&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,date,search);

@override
String toString() {
  return 'AdminProductsEvent.fetchProducts(date: $date, search: $search)';
}


}

/// @nodoc
abstract mixin class _$FetchProductsCopyWith<$Res> implements $AdminProductsEventCopyWith<$Res> {
  factory _$FetchProductsCopyWith(_FetchProducts value, $Res Function(_FetchProducts) _then) = __$FetchProductsCopyWithImpl;
@useResult
$Res call({
 String? date, String? search
});




}
/// @nodoc
class __$FetchProductsCopyWithImpl<$Res>
    implements _$FetchProductsCopyWith<$Res> {
  __$FetchProductsCopyWithImpl(this._self, this._then);

  final _FetchProducts _self;
  final $Res Function(_FetchProducts) _then;

/// Create a copy of AdminProductsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? search = freezed,}) {
  return _then(_FetchProducts(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Refresh implements AdminProductsEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductsEvent.refresh()';
}


}




// dart format on

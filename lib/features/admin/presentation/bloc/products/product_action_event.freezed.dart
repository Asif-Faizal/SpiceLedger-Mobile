// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_action_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductActionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductActionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductActionEvent()';
}


}

/// @nodoc
class $ProductActionEventCopyWith<$Res>  {
$ProductActionEventCopyWith(ProductActionEvent _, $Res Function(ProductActionEvent) __);
}


/// Adds pattern-matching-related methods to [ProductActionEvent].
extension ProductActionEventPatterns on ProductActionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateOrUpdateProduct value)?  createOrUpdateProduct,TResult Function( _CreateOrUpdateGrade value)?  createOrUpdateGrade,TResult Function( _LoadRestProducts value)?  loadRestProducts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrUpdateProduct() when createOrUpdateProduct != null:
return createOrUpdateProduct(_that);case _CreateOrUpdateGrade() when createOrUpdateGrade != null:
return createOrUpdateGrade(_that);case _LoadRestProducts() when loadRestProducts != null:
return loadRestProducts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateOrUpdateProduct value)  createOrUpdateProduct,required TResult Function( _CreateOrUpdateGrade value)  createOrUpdateGrade,required TResult Function( _LoadRestProducts value)  loadRestProducts,}){
final _that = this;
switch (_that) {
case _CreateOrUpdateProduct():
return createOrUpdateProduct(_that);case _CreateOrUpdateGrade():
return createOrUpdateGrade(_that);case _LoadRestProducts():
return loadRestProducts(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateOrUpdateProduct value)?  createOrUpdateProduct,TResult? Function( _CreateOrUpdateGrade value)?  createOrUpdateGrade,TResult? Function( _LoadRestProducts value)?  loadRestProducts,}){
final _that = this;
switch (_that) {
case _CreateOrUpdateProduct() when createOrUpdateProduct != null:
return createOrUpdateProduct(_that);case _CreateOrUpdateGrade() when createOrUpdateGrade != null:
return createOrUpdateGrade(_that);case _LoadRestProducts() when loadRestProducts != null:
return loadRestProducts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Map<String, dynamic> input)?  createOrUpdateProduct,TResult Function( Map<String, dynamic> input)?  createOrUpdateGrade,TResult Function()?  loadRestProducts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrUpdateProduct() when createOrUpdateProduct != null:
return createOrUpdateProduct(_that.input);case _CreateOrUpdateGrade() when createOrUpdateGrade != null:
return createOrUpdateGrade(_that.input);case _LoadRestProducts() when loadRestProducts != null:
return loadRestProducts();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Map<String, dynamic> input)  createOrUpdateProduct,required TResult Function( Map<String, dynamic> input)  createOrUpdateGrade,required TResult Function()  loadRestProducts,}) {final _that = this;
switch (_that) {
case _CreateOrUpdateProduct():
return createOrUpdateProduct(_that.input);case _CreateOrUpdateGrade():
return createOrUpdateGrade(_that.input);case _LoadRestProducts():
return loadRestProducts();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Map<String, dynamic> input)?  createOrUpdateProduct,TResult? Function( Map<String, dynamic> input)?  createOrUpdateGrade,TResult? Function()?  loadRestProducts,}) {final _that = this;
switch (_that) {
case _CreateOrUpdateProduct() when createOrUpdateProduct != null:
return createOrUpdateProduct(_that.input);case _CreateOrUpdateGrade() when createOrUpdateGrade != null:
return createOrUpdateGrade(_that.input);case _LoadRestProducts() when loadRestProducts != null:
return loadRestProducts();case _:
  return null;

}
}

}

/// @nodoc


class _CreateOrUpdateProduct implements ProductActionEvent {
  const _CreateOrUpdateProduct(final  Map<String, dynamic> input): _input = input;
  

 final  Map<String, dynamic> _input;
 Map<String, dynamic> get input {
  if (_input is EqualUnmodifiableMapView) return _input;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_input);
}


/// Create a copy of ProductActionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrUpdateProductCopyWith<_CreateOrUpdateProduct> get copyWith => __$CreateOrUpdateProductCopyWithImpl<_CreateOrUpdateProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrUpdateProduct&&const DeepCollectionEquality().equals(other._input, _input));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_input));

@override
String toString() {
  return 'ProductActionEvent.createOrUpdateProduct(input: $input)';
}


}

/// @nodoc
abstract mixin class _$CreateOrUpdateProductCopyWith<$Res> implements $ProductActionEventCopyWith<$Res> {
  factory _$CreateOrUpdateProductCopyWith(_CreateOrUpdateProduct value, $Res Function(_CreateOrUpdateProduct) _then) = __$CreateOrUpdateProductCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> input
});




}
/// @nodoc
class __$CreateOrUpdateProductCopyWithImpl<$Res>
    implements _$CreateOrUpdateProductCopyWith<$Res> {
  __$CreateOrUpdateProductCopyWithImpl(this._self, this._then);

  final _CreateOrUpdateProduct _self;
  final $Res Function(_CreateOrUpdateProduct) _then;

/// Create a copy of ProductActionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_CreateOrUpdateProduct(
null == input ? _self._input : input // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _CreateOrUpdateGrade implements ProductActionEvent {
  const _CreateOrUpdateGrade(final  Map<String, dynamic> input): _input = input;
  

 final  Map<String, dynamic> _input;
 Map<String, dynamic> get input {
  if (_input is EqualUnmodifiableMapView) return _input;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_input);
}


/// Create a copy of ProductActionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrUpdateGradeCopyWith<_CreateOrUpdateGrade> get copyWith => __$CreateOrUpdateGradeCopyWithImpl<_CreateOrUpdateGrade>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrUpdateGrade&&const DeepCollectionEquality().equals(other._input, _input));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_input));

@override
String toString() {
  return 'ProductActionEvent.createOrUpdateGrade(input: $input)';
}


}

/// @nodoc
abstract mixin class _$CreateOrUpdateGradeCopyWith<$Res> implements $ProductActionEventCopyWith<$Res> {
  factory _$CreateOrUpdateGradeCopyWith(_CreateOrUpdateGrade value, $Res Function(_CreateOrUpdateGrade) _then) = __$CreateOrUpdateGradeCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> input
});




}
/// @nodoc
class __$CreateOrUpdateGradeCopyWithImpl<$Res>
    implements _$CreateOrUpdateGradeCopyWith<$Res> {
  __$CreateOrUpdateGradeCopyWithImpl(this._self, this._then);

  final _CreateOrUpdateGrade _self;
  final $Res Function(_CreateOrUpdateGrade) _then;

/// Create a copy of ProductActionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_CreateOrUpdateGrade(
null == input ? _self._input : input // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _LoadRestProducts implements ProductActionEvent {
  const _LoadRestProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadRestProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductActionEvent.loadRestProducts()';
}


}




// dart format on

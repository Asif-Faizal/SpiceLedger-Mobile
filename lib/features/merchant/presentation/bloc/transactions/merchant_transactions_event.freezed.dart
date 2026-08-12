// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_transactions_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MerchantTransactionsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantTransactionsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MerchantTransactionsEvent()';
}


}

/// @nodoc
class $MerchantTransactionsEventCopyWith<$Res>  {
$MerchantTransactionsEventCopyWith(MerchantTransactionsEvent _, $Res Function(MerchantTransactionsEvent) __);
}


/// Adds pattern-matching-related methods to [MerchantTransactionsEvent].
extension MerchantTransactionsEventPatterns on MerchantTransactionsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetch value)?  fetch,TResult Function( _ApplyFilter value)?  applyFilter,TResult Function( _ClearFilter value)?  clearFilter,TResult Function( _LoadMore value)?  loadMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _ApplyFilter() when applyFilter != null:
return applyFilter(_that);case _ClearFilter() when clearFilter != null:
return clearFilter(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetch value)  fetch,required TResult Function( _ApplyFilter value)  applyFilter,required TResult Function( _ClearFilter value)  clearFilter,required TResult Function( _LoadMore value)  loadMore,}){
final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that);case _ApplyFilter():
return applyFilter(_that);case _ClearFilter():
return clearFilter(_that);case _LoadMore():
return loadMore(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetch value)?  fetch,TResult? Function( _ApplyFilter value)?  applyFilter,TResult? Function( _ClearFilter value)?  clearFilter,TResult? Function( _LoadMore value)?  loadMore,}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _ApplyFilter() when applyFilter != null:
return applyFilter(_that);case _ClearFilter() when clearFilter != null:
return clearFilter(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function( TransactionFilterEntity filter)?  applyFilter,TResult Function()?  clearFilter,TResult Function()?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _ApplyFilter() when applyFilter != null:
return applyFilter(_that.filter);case _ClearFilter() when clearFilter != null:
return clearFilter();case _LoadMore() when loadMore != null:
return loadMore();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function( TransactionFilterEntity filter)  applyFilter,required TResult Function()  clearFilter,required TResult Function()  loadMore,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch();case _ApplyFilter():
return applyFilter(_that.filter);case _ClearFilter():
return clearFilter();case _LoadMore():
return loadMore();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function( TransactionFilterEntity filter)?  applyFilter,TResult? Function()?  clearFilter,TResult? Function()?  loadMore,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _ApplyFilter() when applyFilter != null:
return applyFilter(_that.filter);case _ClearFilter() when clearFilter != null:
return clearFilter();case _LoadMore() when loadMore != null:
return loadMore();case _:
  return null;

}
}

}

/// @nodoc


class _Fetch implements MerchantTransactionsEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MerchantTransactionsEvent.fetch()';
}


}




/// @nodoc


class _ApplyFilter implements MerchantTransactionsEvent {
  const _ApplyFilter(this.filter);
  

 final  TransactionFilterEntity filter;

/// Create a copy of MerchantTransactionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplyFilterCopyWith<_ApplyFilter> get copyWith => __$ApplyFilterCopyWithImpl<_ApplyFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplyFilter&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString() {
  return 'MerchantTransactionsEvent.applyFilter(filter: $filter)';
}


}

/// @nodoc
abstract mixin class _$ApplyFilterCopyWith<$Res> implements $MerchantTransactionsEventCopyWith<$Res> {
  factory _$ApplyFilterCopyWith(_ApplyFilter value, $Res Function(_ApplyFilter) _then) = __$ApplyFilterCopyWithImpl;
@useResult
$Res call({
 TransactionFilterEntity filter
});




}
/// @nodoc
class __$ApplyFilterCopyWithImpl<$Res>
    implements _$ApplyFilterCopyWith<$Res> {
  __$ApplyFilterCopyWithImpl(this._self, this._then);

  final _ApplyFilter _self;
  final $Res Function(_ApplyFilter) _then;

/// Create a copy of MerchantTransactionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filter = null,}) {
  return _then(_ApplyFilter(
null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as TransactionFilterEntity,
  ));
}


}

/// @nodoc


class _ClearFilter implements MerchantTransactionsEvent {
  const _ClearFilter();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearFilter);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MerchantTransactionsEvent.clearFilter()';
}


}




/// @nodoc


class _LoadMore implements MerchantTransactionsEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MerchantTransactionsEvent.loadMore()';
}


}




// dart format on

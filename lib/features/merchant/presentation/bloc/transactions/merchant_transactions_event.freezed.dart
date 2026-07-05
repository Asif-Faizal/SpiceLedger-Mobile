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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetch value)?  fetch,TResult Function( _FilterByGrade value)?  filterByGrade,TResult Function( _LoadMore value)?  loadMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _FilterByGrade() when filterByGrade != null:
return filterByGrade(_that);case _LoadMore() when loadMore != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetch value)  fetch,required TResult Function( _FilterByGrade value)  filterByGrade,required TResult Function( _LoadMore value)  loadMore,}){
final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that);case _FilterByGrade():
return filterByGrade(_that);case _LoadMore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetch value)?  fetch,TResult? Function( _FilterByGrade value)?  filterByGrade,TResult? Function( _LoadMore value)?  loadMore,}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _FilterByGrade() when filterByGrade != null:
return filterByGrade(_that);case _LoadMore() when loadMore != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function( String? spiceGradeId)?  filterByGrade,TResult Function()?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _FilterByGrade() when filterByGrade != null:
return filterByGrade(_that.spiceGradeId);case _LoadMore() when loadMore != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function( String? spiceGradeId)  filterByGrade,required TResult Function()  loadMore,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch();case _FilterByGrade():
return filterByGrade(_that.spiceGradeId);case _LoadMore():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function( String? spiceGradeId)?  filterByGrade,TResult? Function()?  loadMore,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch();case _FilterByGrade() when filterByGrade != null:
return filterByGrade(_that.spiceGradeId);case _LoadMore() when loadMore != null:
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


class _FilterByGrade implements MerchantTransactionsEvent {
  const _FilterByGrade(this.spiceGradeId);
  

 final  String? spiceGradeId;

/// Create a copy of MerchantTransactionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterByGradeCopyWith<_FilterByGrade> get copyWith => __$FilterByGradeCopyWithImpl<_FilterByGrade>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterByGrade&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId));
}


@override
int get hashCode => Object.hash(runtimeType,spiceGradeId);

@override
String toString() {
  return 'MerchantTransactionsEvent.filterByGrade(spiceGradeId: $spiceGradeId)';
}


}

/// @nodoc
abstract mixin class _$FilterByGradeCopyWith<$Res> implements $MerchantTransactionsEventCopyWith<$Res> {
  factory _$FilterByGradeCopyWith(_FilterByGrade value, $Res Function(_FilterByGrade) _then) = __$FilterByGradeCopyWithImpl;
@useResult
$Res call({
 String? spiceGradeId
});




}
/// @nodoc
class __$FilterByGradeCopyWithImpl<$Res>
    implements _$FilterByGradeCopyWith<$Res> {
  __$FilterByGradeCopyWithImpl(this._self, this._then);

  final _FilterByGrade _self;
  final $Res Function(_FilterByGrade) _then;

/// Create a copy of MerchantTransactionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spiceGradeId = freezed,}) {
  return _then(_FilterByGrade(
freezed == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
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

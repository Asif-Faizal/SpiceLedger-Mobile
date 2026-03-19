// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InventoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InventoryEvent()';
}


}

/// @nodoc
class $InventoryEventCopyWith<$Res>  {
$InventoryEventCopyWith(InventoryEvent _, $Res Function(InventoryEvent) __);
}


/// Adds pattern-matching-related methods to [InventoryEvent].
extension InventoryEventPatterns on InventoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadData value)?  loadData,TResult Function( _AddLot value)?  addLot,TResult Function( _AddSale value)?  addSale,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadData() when loadData != null:
return loadData(_that);case _AddLot() when addLot != null:
return addLot(_that);case _AddSale() when addSale != null:
return addSale(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadData value)  loadData,required TResult Function( _AddLot value)  addLot,required TResult Function( _AddSale value)  addSale,}){
final _that = this;
switch (_that) {
case _LoadData():
return loadData(_that);case _AddLot():
return addLot(_that);case _AddSale():
return addSale(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadData value)?  loadData,TResult? Function( _AddLot value)?  addLot,TResult? Function( _AddSale value)?  addSale,}){
final _that = this;
switch (_that) {
case _LoadData() when loadData != null:
return loadData(_that);case _AddLot() when addLot != null:
return addLot(_that);case _AddSale() when addSale != null:
return addSale(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,TResult Function( String date,  String gradeId,  double quantity,  double unitCost)?  addLot,TResult Function( String date,  String gradeId,  double quantity,  double unitPrice)?  addSale,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadData() when loadData != null:
return loadData();case _AddLot() when addLot != null:
return addLot(_that.date,_that.gradeId,_that.quantity,_that.unitCost);case _AddSale() when addSale != null:
return addSale(_that.date,_that.gradeId,_that.quantity,_that.unitPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,required TResult Function( String date,  String gradeId,  double quantity,  double unitCost)  addLot,required TResult Function( String date,  String gradeId,  double quantity,  double unitPrice)  addSale,}) {final _that = this;
switch (_that) {
case _LoadData():
return loadData();case _AddLot():
return addLot(_that.date,_that.gradeId,_that.quantity,_that.unitCost);case _AddSale():
return addSale(_that.date,_that.gradeId,_that.quantity,_that.unitPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,TResult? Function( String date,  String gradeId,  double quantity,  double unitCost)?  addLot,TResult? Function( String date,  String gradeId,  double quantity,  double unitPrice)?  addSale,}) {final _that = this;
switch (_that) {
case _LoadData() when loadData != null:
return loadData();case _AddLot() when addLot != null:
return addLot(_that.date,_that.gradeId,_that.quantity,_that.unitCost);case _AddSale() when addSale != null:
return addSale(_that.date,_that.gradeId,_that.quantity,_that.unitPrice);case _:
  return null;

}
}

}

/// @nodoc


class _LoadData implements InventoryEvent {
  const _LoadData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InventoryEvent.loadData()';
}


}




/// @nodoc


class _AddLot implements InventoryEvent {
  const _AddLot(this.date, this.gradeId, this.quantity, this.unitCost);
  

 final  String date;
 final  String gradeId;
 final  double quantity;
 final  double unitCost;

/// Create a copy of InventoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddLotCopyWith<_AddLot> get copyWith => __$AddLotCopyWithImpl<_AddLot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddLot&&(identical(other.date, date) || other.date == date)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitCost, unitCost) || other.unitCost == unitCost));
}


@override
int get hashCode => Object.hash(runtimeType,date,gradeId,quantity,unitCost);

@override
String toString() {
  return 'InventoryEvent.addLot(date: $date, gradeId: $gradeId, quantity: $quantity, unitCost: $unitCost)';
}


}

/// @nodoc
abstract mixin class _$AddLotCopyWith<$Res> implements $InventoryEventCopyWith<$Res> {
  factory _$AddLotCopyWith(_AddLot value, $Res Function(_AddLot) _then) = __$AddLotCopyWithImpl;
@useResult
$Res call({
 String date, String gradeId, double quantity, double unitCost
});




}
/// @nodoc
class __$AddLotCopyWithImpl<$Res>
    implements _$AddLotCopyWith<$Res> {
  __$AddLotCopyWithImpl(this._self, this._then);

  final _AddLot _self;
  final $Res Function(_AddLot) _then;

/// Create a copy of InventoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,Object? gradeId = null,Object? quantity = null,Object? unitCost = null,}) {
  return _then(_AddLot(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,null == unitCost ? _self.unitCost : unitCost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _AddSale implements InventoryEvent {
  const _AddSale(this.date, this.gradeId, this.quantity, this.unitPrice);
  

 final  String date;
 final  String gradeId;
 final  double quantity;
 final  double unitPrice;

/// Create a copy of InventoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddSaleCopyWith<_AddSale> get copyWith => __$AddSaleCopyWithImpl<_AddSale>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddSale&&(identical(other.date, date) || other.date == date)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice));
}


@override
int get hashCode => Object.hash(runtimeType,date,gradeId,quantity,unitPrice);

@override
String toString() {
  return 'InventoryEvent.addSale(date: $date, gradeId: $gradeId, quantity: $quantity, unitPrice: $unitPrice)';
}


}

/// @nodoc
abstract mixin class _$AddSaleCopyWith<$Res> implements $InventoryEventCopyWith<$Res> {
  factory _$AddSaleCopyWith(_AddSale value, $Res Function(_AddSale) _then) = __$AddSaleCopyWithImpl;
@useResult
$Res call({
 String date, String gradeId, double quantity, double unitPrice
});




}
/// @nodoc
class __$AddSaleCopyWithImpl<$Res>
    implements _$AddSaleCopyWith<$Res> {
  __$AddSaleCopyWithImpl(this._self, this._then);

  final _AddSale _self;
  final $Res Function(_AddSale) _then;

/// Create a copy of InventoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,Object? gradeId = null,Object? quantity = null,Object? unitPrice = null,}) {
  return _then(_AddSale(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$InventoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InventoryState()';
}


}

/// @nodoc
class $InventoryStateCopyWith<$Res>  {
$InventoryStateCopyWith(InventoryState _, $Res Function(InventoryState) __);
}


/// Adds pattern-matching-related methods to [InventoryState].
extension InventoryStatePatterns on InventoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Success():
return success(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Inventory inventory,  List<Grade> grades)?  loaded,TResult Function( String message)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.inventory,_that.grades);case _Success() when success != null:
return success(_that.message);case _Failure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Inventory inventory,  List<Grade> grades)  loaded,required TResult Function( String message)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.inventory,_that.grades);case _Success():
return success(_that.message);case _Failure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Inventory inventory,  List<Grade> grades)?  loaded,TResult? Function( String message)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.inventory,_that.grades);case _Success() when success != null:
return success(_that.message);case _Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements InventoryState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InventoryState.initial()';
}


}




/// @nodoc


class _Loading implements InventoryState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InventoryState.loading()';
}


}




/// @nodoc


class _Loaded implements InventoryState {
  const _Loaded(this.inventory, final  List<Grade> grades): _grades = grades;
  

 final  Inventory inventory;
 final  List<Grade> _grades;
 List<Grade> get grades {
  if (_grades is EqualUnmodifiableListView) return _grades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grades);
}


/// Create a copy of InventoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.inventory, inventory) || other.inventory == inventory)&&const DeepCollectionEquality().equals(other._grades, _grades));
}


@override
int get hashCode => Object.hash(runtimeType,inventory,const DeepCollectionEquality().hash(_grades));

@override
String toString() {
  return 'InventoryState.loaded(inventory: $inventory, grades: $grades)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $InventoryStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 Inventory inventory, List<Grade> grades
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of InventoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? inventory = null,Object? grades = null,}) {
  return _then(_Loaded(
null == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as Inventory,null == grades ? _self._grades : grades // ignore: cast_nullable_to_non_nullable
as List<Grade>,
  ));
}


}

/// @nodoc


class _Success implements InventoryState {
  const _Success(this.message);
  

 final  String message;

/// Create a copy of InventoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'InventoryState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $InventoryStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of InventoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Failure implements InventoryState {
  const _Failure(this.message);
  

 final  String message;

/// Create a copy of InventoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'InventoryState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $InventoryStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of InventoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

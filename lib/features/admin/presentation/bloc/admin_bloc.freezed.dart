// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminEvent()';
}


}

/// @nodoc
class $AdminEventCopyWith<$Res>  {
$AdminEventCopyWith(AdminEvent _, $Res Function(AdminEvent) __);
}


/// Adds pattern-matching-related methods to [AdminEvent].
extension AdminEventPatterns on AdminEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadStats value)?  loadStats,TResult Function( _CreateGrade value)?  createGrade,TResult Function( _SetPrice value)?  setPrice,TResult Function( _CreateProduct value)?  createProduct,TResult Function( _LoadCatalog value)?  loadCatalog,TResult Function( _LoadDashboard value)?  loadDashboard,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadStats() when loadStats != null:
return loadStats(_that);case _CreateGrade() when createGrade != null:
return createGrade(_that);case _SetPrice() when setPrice != null:
return setPrice(_that);case _CreateProduct() when createProduct != null:
return createProduct(_that);case _LoadCatalog() when loadCatalog != null:
return loadCatalog(_that);case _LoadDashboard() when loadDashboard != null:
return loadDashboard(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadStats value)  loadStats,required TResult Function( _CreateGrade value)  createGrade,required TResult Function( _SetPrice value)  setPrice,required TResult Function( _CreateProduct value)  createProduct,required TResult Function( _LoadCatalog value)  loadCatalog,required TResult Function( _LoadDashboard value)  loadDashboard,}){
final _that = this;
switch (_that) {
case _LoadStats():
return loadStats(_that);case _CreateGrade():
return createGrade(_that);case _SetPrice():
return setPrice(_that);case _CreateProduct():
return createProduct(_that);case _LoadCatalog():
return loadCatalog(_that);case _LoadDashboard():
return loadDashboard(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadStats value)?  loadStats,TResult? Function( _CreateGrade value)?  createGrade,TResult? Function( _SetPrice value)?  setPrice,TResult? Function( _CreateProduct value)?  createProduct,TResult? Function( _LoadCatalog value)?  loadCatalog,TResult? Function( _LoadDashboard value)?  loadDashboard,}){
final _that = this;
switch (_that) {
case _LoadStats() when loadStats != null:
return loadStats(_that);case _CreateGrade() when createGrade != null:
return createGrade(_that);case _SetPrice() when setPrice != null:
return setPrice(_that);case _CreateProduct() when createProduct != null:
return createProduct(_that);case _LoadCatalog() when loadCatalog != null:
return loadCatalog(_that);case _LoadDashboard() when loadDashboard != null:
return loadDashboard(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadStats,TResult Function( String productId,  String name,  String description)?  createGrade,TResult Function( String date,  String productId,  String gradeId,  double price)?  setPrice,TResult Function( String name,  String description)?  createProduct,TResult Function()?  loadCatalog,TResult Function( String? date)?  loadDashboard,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadStats() when loadStats != null:
return loadStats();case _CreateGrade() when createGrade != null:
return createGrade(_that.productId,_that.name,_that.description);case _SetPrice() when setPrice != null:
return setPrice(_that.date,_that.productId,_that.gradeId,_that.price);case _CreateProduct() when createProduct != null:
return createProduct(_that.name,_that.description);case _LoadCatalog() when loadCatalog != null:
return loadCatalog();case _LoadDashboard() when loadDashboard != null:
return loadDashboard(_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadStats,required TResult Function( String productId,  String name,  String description)  createGrade,required TResult Function( String date,  String productId,  String gradeId,  double price)  setPrice,required TResult Function( String name,  String description)  createProduct,required TResult Function()  loadCatalog,required TResult Function( String? date)  loadDashboard,}) {final _that = this;
switch (_that) {
case _LoadStats():
return loadStats();case _CreateGrade():
return createGrade(_that.productId,_that.name,_that.description);case _SetPrice():
return setPrice(_that.date,_that.productId,_that.gradeId,_that.price);case _CreateProduct():
return createProduct(_that.name,_that.description);case _LoadCatalog():
return loadCatalog();case _LoadDashboard():
return loadDashboard(_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadStats,TResult? Function( String productId,  String name,  String description)?  createGrade,TResult? Function( String date,  String productId,  String gradeId,  double price)?  setPrice,TResult? Function( String name,  String description)?  createProduct,TResult? Function()?  loadCatalog,TResult? Function( String? date)?  loadDashboard,}) {final _that = this;
switch (_that) {
case _LoadStats() when loadStats != null:
return loadStats();case _CreateGrade() when createGrade != null:
return createGrade(_that.productId,_that.name,_that.description);case _SetPrice() when setPrice != null:
return setPrice(_that.date,_that.productId,_that.gradeId,_that.price);case _CreateProduct() when createProduct != null:
return createProduct(_that.name,_that.description);case _LoadCatalog() when loadCatalog != null:
return loadCatalog();case _LoadDashboard() when loadDashboard != null:
return loadDashboard(_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _LoadStats implements AdminEvent {
  const _LoadStats();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadStats);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminEvent.loadStats()';
}


}




/// @nodoc


class _CreateGrade implements AdminEvent {
  const _CreateGrade(this.productId, this.name, this.description);
  

 final  String productId;
 final  String name;
 final  String description;

/// Create a copy of AdminEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGradeCopyWith<_CreateGrade> get copyWith => __$CreateGradeCopyWithImpl<_CreateGrade>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGrade&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,productId,name,description);

@override
String toString() {
  return 'AdminEvent.createGrade(productId: $productId, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreateGradeCopyWith<$Res> implements $AdminEventCopyWith<$Res> {
  factory _$CreateGradeCopyWith(_CreateGrade value, $Res Function(_CreateGrade) _then) = __$CreateGradeCopyWithImpl;
@useResult
$Res call({
 String productId, String name, String description
});




}
/// @nodoc
class __$CreateGradeCopyWithImpl<$Res>
    implements _$CreateGradeCopyWith<$Res> {
  __$CreateGradeCopyWithImpl(this._self, this._then);

  final _CreateGrade _self;
  final $Res Function(_CreateGrade) _then;

/// Create a copy of AdminEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? name = null,Object? description = null,}) {
  return _then(_CreateGrade(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SetPrice implements AdminEvent {
  const _SetPrice(this.date, this.productId, this.gradeId, this.price);
  

 final  String date;
 final  String productId;
 final  String gradeId;
 final  double price;

/// Create a copy of AdminEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetPriceCopyWith<_SetPrice> get copyWith => __$SetPriceCopyWithImpl<_SetPrice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetPrice&&(identical(other.date, date) || other.date == date)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.gradeId, gradeId) || other.gradeId == gradeId)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,date,productId,gradeId,price);

@override
String toString() {
  return 'AdminEvent.setPrice(date: $date, productId: $productId, gradeId: $gradeId, price: $price)';
}


}

/// @nodoc
abstract mixin class _$SetPriceCopyWith<$Res> implements $AdminEventCopyWith<$Res> {
  factory _$SetPriceCopyWith(_SetPrice value, $Res Function(_SetPrice) _then) = __$SetPriceCopyWithImpl;
@useResult
$Res call({
 String date, String productId, String gradeId, double price
});




}
/// @nodoc
class __$SetPriceCopyWithImpl<$Res>
    implements _$SetPriceCopyWith<$Res> {
  __$SetPriceCopyWithImpl(this._self, this._then);

  final _SetPrice _self;
  final $Res Function(_SetPrice) _then;

/// Create a copy of AdminEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,Object? productId = null,Object? gradeId = null,Object? price = null,}) {
  return _then(_SetPrice(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,null == gradeId ? _self.gradeId : gradeId // ignore: cast_nullable_to_non_nullable
as String,null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _CreateProduct implements AdminEvent {
  const _CreateProduct(this.name, this.description);
  

 final  String name;
 final  String description;

/// Create a copy of AdminEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProductCopyWith<_CreateProduct> get copyWith => __$CreateProductCopyWithImpl<_CreateProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProduct&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,name,description);

@override
String toString() {
  return 'AdminEvent.createProduct(name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreateProductCopyWith<$Res> implements $AdminEventCopyWith<$Res> {
  factory _$CreateProductCopyWith(_CreateProduct value, $Res Function(_CreateProduct) _then) = __$CreateProductCopyWithImpl;
@useResult
$Res call({
 String name, String description
});




}
/// @nodoc
class __$CreateProductCopyWithImpl<$Res>
    implements _$CreateProductCopyWith<$Res> {
  __$CreateProductCopyWithImpl(this._self, this._then);

  final _CreateProduct _self;
  final $Res Function(_CreateProduct) _then;

/// Create a copy of AdminEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,}) {
  return _then(_CreateProduct(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadCatalog implements AdminEvent {
  const _LoadCatalog();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCatalog);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminEvent.loadCatalog()';
}


}




/// @nodoc


class _LoadDashboard implements AdminEvent {
  const _LoadDashboard({this.date});
  

 final  String? date;

/// Create a copy of AdminEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadDashboardCopyWith<_LoadDashboard> get copyWith => __$LoadDashboardCopyWithImpl<_LoadDashboard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadDashboard&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'AdminEvent.loadDashboard(date: $date)';
}


}

/// @nodoc
abstract mixin class _$LoadDashboardCopyWith<$Res> implements $AdminEventCopyWith<$Res> {
  factory _$LoadDashboardCopyWith(_LoadDashboard value, $Res Function(_LoadDashboard) _then) = __$LoadDashboardCopyWithImpl;
@useResult
$Res call({
 String? date
});




}
/// @nodoc
class __$LoadDashboardCopyWithImpl<$Res>
    implements _$LoadDashboardCopyWith<$Res> {
  __$LoadDashboardCopyWithImpl(this._self, this._then);

  final _LoadDashboard _self;
  final $Res Function(_LoadDashboard) _then;

/// Create a copy of AdminEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = freezed,}) {
  return _then(_LoadDashboard(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$AdminState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminState()';
}


}

/// @nodoc
class $AdminStateCopyWith<$Res>  {
$AdminStateCopyWith(AdminState _, $Res Function(AdminState) __);
}


/// Adds pattern-matching-related methods to [AdminState].
extension AdminStatePatterns on AdminState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,TResult Function( _Catalog value)?  catalog,TResult Function( _Dashboard value)?  dashboard,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _Catalog() when catalog != null:
return catalog(_that);case _Dashboard() when dashboard != null:
return dashboard(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,required TResult Function( _Catalog value)  catalog,required TResult Function( _Dashboard value)  dashboard,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Success():
return success(_that);case _Failure():
return failure(_that);case _Catalog():
return catalog(_that);case _Dashboard():
return dashboard(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,TResult? Function( _Catalog value)?  catalog,TResult? Function( _Dashboard value)?  dashboard,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _Catalog() when catalog != null:
return catalog(_that);case _Dashboard() when dashboard != null:
return dashboard(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserStats stats)?  loaded,TResult Function( String message)?  success,TResult Function( String message)?  failure,TResult Function( List<Product> products,  List<Grade> grades,  DailyPricesResponse prices)?  catalog,TResult Function( DashboardResponse dashboard)?  dashboard,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.stats);case _Success() when success != null:
return success(_that.message);case _Failure() when failure != null:
return failure(_that.message);case _Catalog() when catalog != null:
return catalog(_that.products,_that.grades,_that.prices);case _Dashboard() when dashboard != null:
return dashboard(_that.dashboard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserStats stats)  loaded,required TResult Function( String message)  success,required TResult Function( String message)  failure,required TResult Function( List<Product> products,  List<Grade> grades,  DailyPricesResponse prices)  catalog,required TResult Function( DashboardResponse dashboard)  dashboard,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.stats);case _Success():
return success(_that.message);case _Failure():
return failure(_that.message);case _Catalog():
return catalog(_that.products,_that.grades,_that.prices);case _Dashboard():
return dashboard(_that.dashboard);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserStats stats)?  loaded,TResult? Function( String message)?  success,TResult? Function( String message)?  failure,TResult? Function( List<Product> products,  List<Grade> grades,  DailyPricesResponse prices)?  catalog,TResult? Function( DashboardResponse dashboard)?  dashboard,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.stats);case _Success() when success != null:
return success(_that.message);case _Failure() when failure != null:
return failure(_that.message);case _Catalog() when catalog != null:
return catalog(_that.products,_that.grades,_that.prices);case _Dashboard() when dashboard != null:
return dashboard(_that.dashboard);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AdminState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminState.initial()';
}


}




/// @nodoc


class _Loading implements AdminState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminState.loading()';
}


}




/// @nodoc


class _Loaded implements AdminState {
  const _Loaded(this.stats);
  

 final  UserStats stats;

/// Create a copy of AdminState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.stats, stats) || other.stats == stats));
}


@override
int get hashCode => Object.hash(runtimeType,stats);

@override
String toString() {
  return 'AdminState.loaded(stats: $stats)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $AdminStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 UserStats stats
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of AdminState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stats = null,}) {
  return _then(_Loaded(
null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as UserStats,
  ));
}


}

/// @nodoc


class _Success implements AdminState {
  const _Success(this.message);
  

 final  String message;

/// Create a copy of AdminState
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
  return 'AdminState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $AdminStateCopyWith<$Res> {
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

/// Create a copy of AdminState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Failure implements AdminState {
  const _Failure(this.message);
  

 final  String message;

/// Create a copy of AdminState
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
  return 'AdminState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $AdminStateCopyWith<$Res> {
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

/// Create a copy of AdminState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Catalog implements AdminState {
  const _Catalog(final  List<Product> products, final  List<Grade> grades, this.prices): _products = products,_grades = grades;
  

 final  List<Product> _products;
 List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<Grade> _grades;
 List<Grade> get grades {
  if (_grades is EqualUnmodifiableListView) return _grades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grades);
}

 final  DailyPricesResponse prices;

/// Create a copy of AdminState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogCopyWith<_Catalog> get copyWith => __$CatalogCopyWithImpl<_Catalog>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Catalog&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._grades, _grades)&&(identical(other.prices, prices) || other.prices == prices));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_grades),prices);

@override
String toString() {
  return 'AdminState.catalog(products: $products, grades: $grades, prices: $prices)';
}


}

/// @nodoc
abstract mixin class _$CatalogCopyWith<$Res> implements $AdminStateCopyWith<$Res> {
  factory _$CatalogCopyWith(_Catalog value, $Res Function(_Catalog) _then) = __$CatalogCopyWithImpl;
@useResult
$Res call({
 List<Product> products, List<Grade> grades, DailyPricesResponse prices
});


$DailyPricesResponseCopyWith<$Res> get prices;

}
/// @nodoc
class __$CatalogCopyWithImpl<$Res>
    implements _$CatalogCopyWith<$Res> {
  __$CatalogCopyWithImpl(this._self, this._then);

  final _Catalog _self;
  final $Res Function(_Catalog) _then;

/// Create a copy of AdminState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,Object? grades = null,Object? prices = null,}) {
  return _then(_Catalog(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,null == grades ? _self._grades : grades // ignore: cast_nullable_to_non_nullable
as List<Grade>,null == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as DailyPricesResponse,
  ));
}

/// Create a copy of AdminState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyPricesResponseCopyWith<$Res> get prices {
  
  return $DailyPricesResponseCopyWith<$Res>(_self.prices, (value) {
    return _then(_self.copyWith(prices: value));
  });
}
}

/// @nodoc


class _Dashboard implements AdminState {
  const _Dashboard(this.dashboard);
  

 final  DashboardResponse dashboard;

/// Create a copy of AdminState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardCopyWith<_Dashboard> get copyWith => __$DashboardCopyWithImpl<_Dashboard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dashboard&&(identical(other.dashboard, dashboard) || other.dashboard == dashboard));
}


@override
int get hashCode => Object.hash(runtimeType,dashboard);

@override
String toString() {
  return 'AdminState.dashboard(dashboard: $dashboard)';
}


}

/// @nodoc
abstract mixin class _$DashboardCopyWith<$Res> implements $AdminStateCopyWith<$Res> {
  factory _$DashboardCopyWith(_Dashboard value, $Res Function(_Dashboard) _then) = __$DashboardCopyWithImpl;
@useResult
$Res call({
 DashboardResponse dashboard
});


$DashboardResponseCopyWith<$Res> get dashboard;

}
/// @nodoc
class __$DashboardCopyWithImpl<$Res>
    implements _$DashboardCopyWith<$Res> {
  __$DashboardCopyWithImpl(this._self, this._then);

  final _Dashboard _self;
  final $Res Function(_Dashboard) _then;

/// Create a copy of AdminState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dashboard = null,}) {
  return _then(_Dashboard(
null == dashboard ? _self.dashboard : dashboard // ignore: cast_nullable_to_non_nullable
as DashboardResponse,
  ));
}

/// Create a copy of AdminState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardResponseCopyWith<$Res> get dashboard {
  
  return $DashboardResponseCopyWith<$Res>(_self.dashboard, (value) {
    return _then(_self.copyWith(dashboard: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionModel {

 String get id;@JsonKey(name: 'userId') String get userId;@JsonKey(name: 'spiceGradeId') String get spiceGradeId; String get type; double get quantity; double get price;@JsonKey(name: 'tradeDate') String get tradeDate;@JsonKey(name: 'createdAt') String get createdAt;
/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<TransactionModel> get copyWith => _$TransactionModelCopyWithImpl<TransactionModel>(this as TransactionModel, _$identity);

  /// Serializes this TransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.tradeDate, tradeDate) || other.tradeDate == tradeDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,spiceGradeId,type,quantity,price,tradeDate,createdAt);

@override
String toString() {
  return 'TransactionModel(id: $id, userId: $userId, spiceGradeId: $spiceGradeId, type: $type, quantity: $quantity, price: $price, tradeDate: $tradeDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TransactionModelCopyWith<$Res>  {
  factory $TransactionModelCopyWith(TransactionModel value, $Res Function(TransactionModel) _then) = _$TransactionModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'spiceGradeId') String spiceGradeId, String type, double quantity, double price,@JsonKey(name: 'tradeDate') String tradeDate,@JsonKey(name: 'createdAt') String createdAt
});




}
/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._self, this._then);

  final TransactionModel _self;
  final $Res Function(TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? spiceGradeId = null,Object? type = null,Object? quantity = null,Object? price = null,Object? tradeDate = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,spiceGradeId: null == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,tradeDate: null == tradeDate ? _self.tradeDate : tradeDate // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionModel].
extension TransactionModelPatterns on TransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String type,  double quantity,  double price, @JsonKey(name: 'tradeDate')  String tradeDate, @JsonKey(name: 'createdAt')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.id,_that.userId,_that.spiceGradeId,_that.type,_that.quantity,_that.price,_that.tradeDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String type,  double quantity,  double price, @JsonKey(name: 'tradeDate')  String tradeDate, @JsonKey(name: 'createdAt')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _TransactionModel():
return $default(_that.id,_that.userId,_that.spiceGradeId,_that.type,_that.quantity,_that.price,_that.tradeDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'spiceGradeId')  String spiceGradeId,  String type,  double quantity,  double price, @JsonKey(name: 'tradeDate')  String tradeDate, @JsonKey(name: 'createdAt')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.id,_that.userId,_that.spiceGradeId,_that.type,_that.quantity,_that.price,_that.tradeDate,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionModel implements TransactionModel {
  const _TransactionModel({required this.id, @JsonKey(name: 'userId') required this.userId, @JsonKey(name: 'spiceGradeId') required this.spiceGradeId, required this.type, required this.quantity, required this.price, @JsonKey(name: 'tradeDate') required this.tradeDate, @JsonKey(name: 'createdAt') required this.createdAt});
  factory _TransactionModel.fromJson(Map<String, dynamic> json) => _$TransactionModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'userId') final  String userId;
@override@JsonKey(name: 'spiceGradeId') final  String spiceGradeId;
@override final  String type;
@override final  double quantity;
@override final  double price;
@override@JsonKey(name: 'tradeDate') final  String tradeDate;
@override@JsonKey(name: 'createdAt') final  String createdAt;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionModelCopyWith<_TransactionModel> get copyWith => __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.spiceGradeId, spiceGradeId) || other.spiceGradeId == spiceGradeId)&&(identical(other.type, type) || other.type == type)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.tradeDate, tradeDate) || other.tradeDate == tradeDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,spiceGradeId,type,quantity,price,tradeDate,createdAt);

@override
String toString() {
  return 'TransactionModel(id: $id, userId: $userId, spiceGradeId: $spiceGradeId, type: $type, quantity: $quantity, price: $price, tradeDate: $tradeDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionModelCopyWith<$Res> implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(_TransactionModel value, $Res Function(_TransactionModel) _then) = __$TransactionModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'spiceGradeId') String spiceGradeId, String type, double quantity, double price,@JsonKey(name: 'tradeDate') String tradeDate,@JsonKey(name: 'createdAt') String createdAt
});




}
/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(this._self, this._then);

  final _TransactionModel _self;
  final $Res Function(_TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? spiceGradeId = null,Object? type = null,Object? quantity = null,Object? price = null,Object? tradeDate = null,Object? createdAt = null,}) {
  return _then(_TransactionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,spiceGradeId: null == spiceGradeId ? _self.spiceGradeId : spiceGradeId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,tradeDate: null == tradeDate ? _self.tradeDate : tradeDate // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TopProductModel {

 String get productName; String get gradeName; double get volume;
/// Create a copy of TopProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopProductModelCopyWith<TopProductModel> get copyWith => _$TopProductModelCopyWithImpl<TopProductModel>(this as TopProductModel, _$identity);

  /// Serializes this TopProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopProductModel&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.volume, volume) || other.volume == volume));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,gradeName,volume);

@override
String toString() {
  return 'TopProductModel(productName: $productName, gradeName: $gradeName, volume: $volume)';
}


}

/// @nodoc
abstract mixin class $TopProductModelCopyWith<$Res>  {
  factory $TopProductModelCopyWith(TopProductModel value, $Res Function(TopProductModel) _then) = _$TopProductModelCopyWithImpl;
@useResult
$Res call({
 String productName, String gradeName, double volume
});




}
/// @nodoc
class _$TopProductModelCopyWithImpl<$Res>
    implements $TopProductModelCopyWith<$Res> {
  _$TopProductModelCopyWithImpl(this._self, this._then);

  final TopProductModel _self;
  final $Res Function(TopProductModel) _then;

/// Create a copy of TopProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productName = null,Object? gradeName = null,Object? volume = null,}) {
  return _then(_self.copyWith(
productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TopProductModel].
extension TopProductModelPatterns on TopProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopProductModel value)  $default,){
final _that = this;
switch (_that) {
case _TopProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productName,  String gradeName,  double volume)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopProductModel() when $default != null:
return $default(_that.productName,_that.gradeName,_that.volume);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productName,  String gradeName,  double volume)  $default,) {final _that = this;
switch (_that) {
case _TopProductModel():
return $default(_that.productName,_that.gradeName,_that.volume);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productName,  String gradeName,  double volume)?  $default,) {final _that = this;
switch (_that) {
case _TopProductModel() when $default != null:
return $default(_that.productName,_that.gradeName,_that.volume);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopProductModel implements TopProductModel {
  const _TopProductModel({required this.productName, required this.gradeName, required this.volume});
  factory _TopProductModel.fromJson(Map<String, dynamic> json) => _$TopProductModelFromJson(json);

@override final  String productName;
@override final  String gradeName;
@override final  double volume;

/// Create a copy of TopProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopProductModelCopyWith<_TopProductModel> get copyWith => __$TopProductModelCopyWithImpl<_TopProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopProductModel&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.gradeName, gradeName) || other.gradeName == gradeName)&&(identical(other.volume, volume) || other.volume == volume));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,gradeName,volume);

@override
String toString() {
  return 'TopProductModel(productName: $productName, gradeName: $gradeName, volume: $volume)';
}


}

/// @nodoc
abstract mixin class _$TopProductModelCopyWith<$Res> implements $TopProductModelCopyWith<$Res> {
  factory _$TopProductModelCopyWith(_TopProductModel value, $Res Function(_TopProductModel) _then) = __$TopProductModelCopyWithImpl;
@override @useResult
$Res call({
 String productName, String gradeName, double volume
});




}
/// @nodoc
class __$TopProductModelCopyWithImpl<$Res>
    implements _$TopProductModelCopyWith<$Res> {
  __$TopProductModelCopyWithImpl(this._self, this._then);

  final _TopProductModel _self;
  final $Res Function(_TopProductModel) _then;

/// Create a copy of TopProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productName = null,Object? gradeName = null,Object? volume = null,}) {
  return _then(_TopProductModel(
productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,gradeName: null == gradeName ? _self.gradeName : gradeName // ignore: cast_nullable_to_non_nullable
as String,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$AdminDashboardModel {

 int get totalUsers; int get totalProducts; int get totalTransactions; double get totalVolume; List<TopProductModel> get topProducts; List<TransactionModel> get recentTransactions;
/// Create a copy of AdminDashboardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminDashboardModelCopyWith<AdminDashboardModel> get copyWith => _$AdminDashboardModelCopyWithImpl<AdminDashboardModel>(this as AdminDashboardModel, _$identity);

  /// Serializes this AdminDashboardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminDashboardModel&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.totalProducts, totalProducts) || other.totalProducts == totalProducts)&&(identical(other.totalTransactions, totalTransactions) || other.totalTransactions == totalTransactions)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&const DeepCollectionEquality().equals(other.topProducts, topProducts)&&const DeepCollectionEquality().equals(other.recentTransactions, recentTransactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUsers,totalProducts,totalTransactions,totalVolume,const DeepCollectionEquality().hash(topProducts),const DeepCollectionEquality().hash(recentTransactions));

@override
String toString() {
  return 'AdminDashboardModel(totalUsers: $totalUsers, totalProducts: $totalProducts, totalTransactions: $totalTransactions, totalVolume: $totalVolume, topProducts: $topProducts, recentTransactions: $recentTransactions)';
}


}

/// @nodoc
abstract mixin class $AdminDashboardModelCopyWith<$Res>  {
  factory $AdminDashboardModelCopyWith(AdminDashboardModel value, $Res Function(AdminDashboardModel) _then) = _$AdminDashboardModelCopyWithImpl;
@useResult
$Res call({
 int totalUsers, int totalProducts, int totalTransactions, double totalVolume, List<TopProductModel> topProducts, List<TransactionModel> recentTransactions
});




}
/// @nodoc
class _$AdminDashboardModelCopyWithImpl<$Res>
    implements $AdminDashboardModelCopyWith<$Res> {
  _$AdminDashboardModelCopyWithImpl(this._self, this._then);

  final AdminDashboardModel _self;
  final $Res Function(AdminDashboardModel) _then;

/// Create a copy of AdminDashboardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalUsers = null,Object? totalProducts = null,Object? totalTransactions = null,Object? totalVolume = null,Object? topProducts = null,Object? recentTransactions = null,}) {
  return _then(_self.copyWith(
totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,totalProducts: null == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as int,totalTransactions: null == totalTransactions ? _self.totalTransactions : totalTransactions // ignore: cast_nullable_to_non_nullable
as int,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as double,topProducts: null == topProducts ? _self.topProducts : topProducts // ignore: cast_nullable_to_non_nullable
as List<TopProductModel>,recentTransactions: null == recentTransactions ? _self.recentTransactions : recentTransactions // ignore: cast_nullable_to_non_nullable
as List<TransactionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminDashboardModel].
extension AdminDashboardModelPatterns on AdminDashboardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminDashboardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminDashboardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminDashboardModel value)  $default,){
final _that = this;
switch (_that) {
case _AdminDashboardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminDashboardModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdminDashboardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalUsers,  int totalProducts,  int totalTransactions,  double totalVolume,  List<TopProductModel> topProducts,  List<TransactionModel> recentTransactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminDashboardModel() when $default != null:
return $default(_that.totalUsers,_that.totalProducts,_that.totalTransactions,_that.totalVolume,_that.topProducts,_that.recentTransactions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalUsers,  int totalProducts,  int totalTransactions,  double totalVolume,  List<TopProductModel> topProducts,  List<TransactionModel> recentTransactions)  $default,) {final _that = this;
switch (_that) {
case _AdminDashboardModel():
return $default(_that.totalUsers,_that.totalProducts,_that.totalTransactions,_that.totalVolume,_that.topProducts,_that.recentTransactions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalUsers,  int totalProducts,  int totalTransactions,  double totalVolume,  List<TopProductModel> topProducts,  List<TransactionModel> recentTransactions)?  $default,) {final _that = this;
switch (_that) {
case _AdminDashboardModel() when $default != null:
return $default(_that.totalUsers,_that.totalProducts,_that.totalTransactions,_that.totalVolume,_that.topProducts,_that.recentTransactions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminDashboardModel implements AdminDashboardModel {
  const _AdminDashboardModel({required this.totalUsers, required this.totalProducts, required this.totalTransactions, required this.totalVolume, required final  List<TopProductModel> topProducts, required final  List<TransactionModel> recentTransactions}): _topProducts = topProducts,_recentTransactions = recentTransactions;
  factory _AdminDashboardModel.fromJson(Map<String, dynamic> json) => _$AdminDashboardModelFromJson(json);

@override final  int totalUsers;
@override final  int totalProducts;
@override final  int totalTransactions;
@override final  double totalVolume;
 final  List<TopProductModel> _topProducts;
@override List<TopProductModel> get topProducts {
  if (_topProducts is EqualUnmodifiableListView) return _topProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topProducts);
}

 final  List<TransactionModel> _recentTransactions;
@override List<TransactionModel> get recentTransactions {
  if (_recentTransactions is EqualUnmodifiableListView) return _recentTransactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentTransactions);
}


/// Create a copy of AdminDashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminDashboardModelCopyWith<_AdminDashboardModel> get copyWith => __$AdminDashboardModelCopyWithImpl<_AdminDashboardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminDashboardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminDashboardModel&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.totalProducts, totalProducts) || other.totalProducts == totalProducts)&&(identical(other.totalTransactions, totalTransactions) || other.totalTransactions == totalTransactions)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&const DeepCollectionEquality().equals(other._topProducts, _topProducts)&&const DeepCollectionEquality().equals(other._recentTransactions, _recentTransactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUsers,totalProducts,totalTransactions,totalVolume,const DeepCollectionEquality().hash(_topProducts),const DeepCollectionEquality().hash(_recentTransactions));

@override
String toString() {
  return 'AdminDashboardModel(totalUsers: $totalUsers, totalProducts: $totalProducts, totalTransactions: $totalTransactions, totalVolume: $totalVolume, topProducts: $topProducts, recentTransactions: $recentTransactions)';
}


}

/// @nodoc
abstract mixin class _$AdminDashboardModelCopyWith<$Res> implements $AdminDashboardModelCopyWith<$Res> {
  factory _$AdminDashboardModelCopyWith(_AdminDashboardModel value, $Res Function(_AdminDashboardModel) _then) = __$AdminDashboardModelCopyWithImpl;
@override @useResult
$Res call({
 int totalUsers, int totalProducts, int totalTransactions, double totalVolume, List<TopProductModel> topProducts, List<TransactionModel> recentTransactions
});




}
/// @nodoc
class __$AdminDashboardModelCopyWithImpl<$Res>
    implements _$AdminDashboardModelCopyWith<$Res> {
  __$AdminDashboardModelCopyWithImpl(this._self, this._then);

  final _AdminDashboardModel _self;
  final $Res Function(_AdminDashboardModel) _then;

/// Create a copy of AdminDashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalUsers = null,Object? totalProducts = null,Object? totalTransactions = null,Object? totalVolume = null,Object? topProducts = null,Object? recentTransactions = null,}) {
  return _then(_AdminDashboardModel(
totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,totalProducts: null == totalProducts ? _self.totalProducts : totalProducts // ignore: cast_nullable_to_non_nullable
as int,totalTransactions: null == totalTransactions ? _self.totalTransactions : totalTransactions // ignore: cast_nullable_to_non_nullable
as int,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as double,topProducts: null == topProducts ? _self._topProducts : topProducts // ignore: cast_nullable_to_non_nullable
as List<TopProductModel>,recentTransactions: null == recentTransactions ? _self._recentTransactions : recentTransactions // ignore: cast_nullable_to_non_nullable
as List<TransactionModel>,
  ));
}


}

// dart format on

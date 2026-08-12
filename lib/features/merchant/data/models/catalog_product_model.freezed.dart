// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MerchantGradeModel {

 String get id;@JsonKey(name: 'productId') String get productId; String get name; String get description; String get status; double get price;
/// Create a copy of MerchantGradeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantGradeModelCopyWith<MerchantGradeModel> get copyWith => _$MerchantGradeModelCopyWithImpl<MerchantGradeModel>(this as MerchantGradeModel, _$identity);

  /// Serializes this MerchantGradeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantGradeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,name,description,status,price);

@override
String toString() {
  return 'MerchantGradeModel(id: $id, productId: $productId, name: $name, description: $description, status: $status, price: $price)';
}


}

/// @nodoc
abstract mixin class $MerchantGradeModelCopyWith<$Res>  {
  factory $MerchantGradeModelCopyWith(MerchantGradeModel value, $Res Function(MerchantGradeModel) _then) = _$MerchantGradeModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'productId') String productId, String name, String description, String status, double price
});




}
/// @nodoc
class _$MerchantGradeModelCopyWithImpl<$Res>
    implements $MerchantGradeModelCopyWith<$Res> {
  _$MerchantGradeModelCopyWithImpl(this._self, this._then);

  final MerchantGradeModel _self;
  final $Res Function(MerchantGradeModel) _then;

/// Create a copy of MerchantGradeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? name = null,Object? description = null,Object? status = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantGradeModel].
extension MerchantGradeModelPatterns on MerchantGradeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantGradeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantGradeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantGradeModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantGradeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantGradeModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantGradeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'productId')  String productId,  String name,  String description,  String status,  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantGradeModel() when $default != null:
return $default(_that.id,_that.productId,_that.name,_that.description,_that.status,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'productId')  String productId,  String name,  String description,  String status,  double price)  $default,) {final _that = this;
switch (_that) {
case _MerchantGradeModel():
return $default(_that.id,_that.productId,_that.name,_that.description,_that.status,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'productId')  String productId,  String name,  String description,  String status,  double price)?  $default,) {final _that = this;
switch (_that) {
case _MerchantGradeModel() when $default != null:
return $default(_that.id,_that.productId,_that.name,_that.description,_that.status,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantGradeModel implements MerchantGradeModel {
  const _MerchantGradeModel({required this.id, @JsonKey(name: 'productId') required this.productId, required this.name, required this.description, required this.status, required this.price});
  factory _MerchantGradeModel.fromJson(Map<String, dynamic> json) => _$MerchantGradeModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'productId') final  String productId;
@override final  String name;
@override final  String description;
@override final  String status;
@override final  double price;

/// Create a copy of MerchantGradeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantGradeModelCopyWith<_MerchantGradeModel> get copyWith => __$MerchantGradeModelCopyWithImpl<_MerchantGradeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantGradeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantGradeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,name,description,status,price);

@override
String toString() {
  return 'MerchantGradeModel(id: $id, productId: $productId, name: $name, description: $description, status: $status, price: $price)';
}


}

/// @nodoc
abstract mixin class _$MerchantGradeModelCopyWith<$Res> implements $MerchantGradeModelCopyWith<$Res> {
  factory _$MerchantGradeModelCopyWith(_MerchantGradeModel value, $Res Function(_MerchantGradeModel) _then) = __$MerchantGradeModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'productId') String productId, String name, String description, String status, double price
});




}
/// @nodoc
class __$MerchantGradeModelCopyWithImpl<$Res>
    implements _$MerchantGradeModelCopyWith<$Res> {
  __$MerchantGradeModelCopyWithImpl(this._self, this._then);

  final _MerchantGradeModel _self;
  final $Res Function(_MerchantGradeModel) _then;

/// Create a copy of MerchantGradeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? name = null,Object? description = null,Object? status = null,Object? price = null,}) {
  return _then(_MerchantGradeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$MerchantProductModel {

 String get id; String get name; String get category; String get description; String get status; List<MerchantGradeModel> get grades;
/// Create a copy of MerchantProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantProductModelCopyWith<MerchantProductModel> get copyWith => _$MerchantProductModelCopyWithImpl<MerchantProductModel>(this as MerchantProductModel, _$identity);

  /// Serializes this MerchantProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.grades, grades));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,category,description,status,const DeepCollectionEquality().hash(grades));

@override
String toString() {
  return 'MerchantProductModel(id: $id, name: $name, category: $category, description: $description, status: $status, grades: $grades)';
}


}

/// @nodoc
abstract mixin class $MerchantProductModelCopyWith<$Res>  {
  factory $MerchantProductModelCopyWith(MerchantProductModel value, $Res Function(MerchantProductModel) _then) = _$MerchantProductModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String category, String description, String status, List<MerchantGradeModel> grades
});




}
/// @nodoc
class _$MerchantProductModelCopyWithImpl<$Res>
    implements $MerchantProductModelCopyWith<$Res> {
  _$MerchantProductModelCopyWithImpl(this._self, this._then);

  final MerchantProductModel _self;
  final $Res Function(MerchantProductModel) _then;

/// Create a copy of MerchantProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? category = null,Object? description = null,Object? status = null,Object? grades = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as List<MerchantGradeModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantProductModel].
extension MerchantProductModelPatterns on MerchantProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantProductModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String category,  String description,  String status,  List<MerchantGradeModel> grades)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantProductModel() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.description,_that.status,_that.grades);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String category,  String description,  String status,  List<MerchantGradeModel> grades)  $default,) {final _that = this;
switch (_that) {
case _MerchantProductModel():
return $default(_that.id,_that.name,_that.category,_that.description,_that.status,_that.grades);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String category,  String description,  String status,  List<MerchantGradeModel> grades)?  $default,) {final _that = this;
switch (_that) {
case _MerchantProductModel() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.description,_that.status,_that.grades);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantProductModel implements MerchantProductModel {
  const _MerchantProductModel({required this.id, required this.name, required this.category, required this.description, required this.status, required final  List<MerchantGradeModel> grades}): _grades = grades;
  factory _MerchantProductModel.fromJson(Map<String, dynamic> json) => _$MerchantProductModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String category;
@override final  String description;
@override final  String status;
 final  List<MerchantGradeModel> _grades;
@override List<MerchantGradeModel> get grades {
  if (_grades is EqualUnmodifiableListView) return _grades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grades);
}


/// Create a copy of MerchantProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantProductModelCopyWith<_MerchantProductModel> get copyWith => __$MerchantProductModelCopyWithImpl<_MerchantProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._grades, _grades));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,category,description,status,const DeepCollectionEquality().hash(_grades));

@override
String toString() {
  return 'MerchantProductModel(id: $id, name: $name, category: $category, description: $description, status: $status, grades: $grades)';
}


}

/// @nodoc
abstract mixin class _$MerchantProductModelCopyWith<$Res> implements $MerchantProductModelCopyWith<$Res> {
  factory _$MerchantProductModelCopyWith(_MerchantProductModel value, $Res Function(_MerchantProductModel) _then) = __$MerchantProductModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String category, String description, String status, List<MerchantGradeModel> grades
});




}
/// @nodoc
class __$MerchantProductModelCopyWithImpl<$Res>
    implements _$MerchantProductModelCopyWith<$Res> {
  __$MerchantProductModelCopyWithImpl(this._self, this._then);

  final _MerchantProductModel _self;
  final $Res Function(_MerchantProductModel) _then;

/// Create a copy of MerchantProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? category = null,Object? description = null,Object? status = null,Object? grades = null,}) {
  return _then(_MerchantProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,grades: null == grades ? _self._grades : grades // ignore: cast_nullable_to_non_nullable
as List<MerchantGradeModel>,
  ));
}


}

// dart format on

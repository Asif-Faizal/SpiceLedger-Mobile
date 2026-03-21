// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MerchantModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'account_id') String? get accountId;@JsonKey(name: 'phone_number') String get phoneNumber; String get address; String get city; String get state; String get pincode;
/// Create a copy of MerchantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantModelCopyWith<MerchantModel> get copyWith => _$MerchantModelCopyWithImpl<MerchantModel>(this as MerchantModel, _$identity);

  /// Serializes this MerchantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.pincode, pincode) || other.pincode == pincode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountId,phoneNumber,address,city,state,pincode);

@override
String toString() {
  return 'MerchantModel(id: $id, accountId: $accountId, phoneNumber: $phoneNumber, address: $address, city: $city, state: $state, pincode: $pincode)';
}


}

/// @nodoc
abstract mixin class $MerchantModelCopyWith<$Res>  {
  factory $MerchantModelCopyWith(MerchantModel value, $Res Function(MerchantModel) _then) = _$MerchantModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'account_id') String? accountId,@JsonKey(name: 'phone_number') String phoneNumber, String address, String city, String state, String pincode
});




}
/// @nodoc
class _$MerchantModelCopyWithImpl<$Res>
    implements $MerchantModelCopyWith<$Res> {
  _$MerchantModelCopyWithImpl(this._self, this._then);

  final MerchantModel _self;
  final $Res Function(MerchantModel) _then;

/// Create a copy of MerchantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? accountId = freezed,Object? phoneNumber = null,Object? address = null,Object? city = null,Object? state = null,Object? pincode = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,pincode: null == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantModel].
extension MerchantModelPatterns on MerchantModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'phone_number')  String phoneNumber,  String address,  String city,  String state,  String pincode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantModel() when $default != null:
return $default(_that.id,_that.accountId,_that.phoneNumber,_that.address,_that.city,_that.state,_that.pincode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'phone_number')  String phoneNumber,  String address,  String city,  String state,  String pincode)  $default,) {final _that = this;
switch (_that) {
case _MerchantModel():
return $default(_that.id,_that.accountId,_that.phoneNumber,_that.address,_that.city,_that.state,_that.pincode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'phone_number')  String phoneNumber,  String address,  String city,  String state,  String pincode)?  $default,) {final _that = this;
switch (_that) {
case _MerchantModel() when $default != null:
return $default(_that.id,_that.accountId,_that.phoneNumber,_that.address,_that.city,_that.state,_that.pincode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantModel implements MerchantModel {
  const _MerchantModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'account_id') this.accountId, @JsonKey(name: 'phone_number') required this.phoneNumber, required this.address, required this.city, required this.state, required this.pincode});
  factory _MerchantModel.fromJson(Map<String, dynamic> json) => _$MerchantModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'account_id') final  String? accountId;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override final  String address;
@override final  String city;
@override final  String state;
@override final  String pincode;

/// Create a copy of MerchantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantModelCopyWith<_MerchantModel> get copyWith => __$MerchantModelCopyWithImpl<_MerchantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.pincode, pincode) || other.pincode == pincode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountId,phoneNumber,address,city,state,pincode);

@override
String toString() {
  return 'MerchantModel(id: $id, accountId: $accountId, phoneNumber: $phoneNumber, address: $address, city: $city, state: $state, pincode: $pincode)';
}


}

/// @nodoc
abstract mixin class _$MerchantModelCopyWith<$Res> implements $MerchantModelCopyWith<$Res> {
  factory _$MerchantModelCopyWith(_MerchantModel value, $Res Function(_MerchantModel) _then) = __$MerchantModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'account_id') String? accountId,@JsonKey(name: 'phone_number') String phoneNumber, String address, String city, String state, String pincode
});




}
/// @nodoc
class __$MerchantModelCopyWithImpl<$Res>
    implements _$MerchantModelCopyWith<$Res> {
  __$MerchantModelCopyWithImpl(this._self, this._then);

  final _MerchantModel _self;
  final $Res Function(_MerchantModel) _then;

/// Create a copy of MerchantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? accountId = freezed,Object? phoneNumber = null,Object? address = null,Object? city = null,Object? state = null,Object? pincode = null,}) {
  return _then(_MerchantModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,pincode: null == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

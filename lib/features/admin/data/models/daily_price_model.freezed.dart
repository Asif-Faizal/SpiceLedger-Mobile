// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DailyPriceItem _$DailyPriceItemFromJson(Map<String, dynamic> json) {
  return _DailyPriceItem.fromJson(json);
}

/// @nodoc
mixin _$DailyPriceItem {
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade_id')
  String get gradeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero)
  double get pricePerKg => throw _privateConstructorUsedError;

  /// Serializes this DailyPriceItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyPriceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyPriceItemCopyWith<DailyPriceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyPriceItemCopyWith<$Res> {
  factory $DailyPriceItemCopyWith(
    DailyPriceItem value,
    $Res Function(DailyPriceItem) then,
  ) = _$DailyPriceItemCopyWithImpl<$Res, DailyPriceItem>;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') String productId,
    @JsonKey(name: 'grade_id') String gradeId,
    @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero) double pricePerKg,
  });
}

/// @nodoc
class _$DailyPriceItemCopyWithImpl<$Res, $Val extends DailyPriceItem>
    implements $DailyPriceItemCopyWith<$Res> {
  _$DailyPriceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyPriceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? gradeId = null,
    Object? pricePerKg = null,
  }) {
    return _then(
      _value.copyWith(
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as String,
            gradeId: null == gradeId
                ? _value.gradeId
                : gradeId // ignore: cast_nullable_to_non_nullable
                      as String,
            pricePerKg: null == pricePerKg
                ? _value.pricePerKg
                : pricePerKg // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyPriceItemImplCopyWith<$Res>
    implements $DailyPriceItemCopyWith<$Res> {
  factory _$$DailyPriceItemImplCopyWith(
    _$DailyPriceItemImpl value,
    $Res Function(_$DailyPriceItemImpl) then,
  ) = __$$DailyPriceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') String productId,
    @JsonKey(name: 'grade_id') String gradeId,
    @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero) double pricePerKg,
  });
}

/// @nodoc
class __$$DailyPriceItemImplCopyWithImpl<$Res>
    extends _$DailyPriceItemCopyWithImpl<$Res, _$DailyPriceItemImpl>
    implements _$$DailyPriceItemImplCopyWith<$Res> {
  __$$DailyPriceItemImplCopyWithImpl(
    _$DailyPriceItemImpl _value,
    $Res Function(_$DailyPriceItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyPriceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? gradeId = null,
    Object? pricePerKg = null,
  }) {
    return _then(
      _$DailyPriceItemImpl(
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String,
        gradeId: null == gradeId
            ? _value.gradeId
            : gradeId // ignore: cast_nullable_to_non_nullable
                  as String,
        pricePerKg: null == pricePerKg
            ? _value.pricePerKg
            : pricePerKg // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyPriceItemImpl implements _DailyPriceItem {
  const _$DailyPriceItemImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'grade_id') required this.gradeId,
    @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero)
    required this.pricePerKg,
  });

  factory _$DailyPriceItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyPriceItemImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  @JsonKey(name: 'grade_id')
  final String gradeId;
  @override
  @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero)
  final double pricePerKg;

  @override
  String toString() {
    return 'DailyPriceItem(productId: $productId, gradeId: $gradeId, pricePerKg: $pricePerKg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyPriceItemImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.gradeId, gradeId) || other.gradeId == gradeId) &&
            (identical(other.pricePerKg, pricePerKg) ||
                other.pricePerKg == pricePerKg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, gradeId, pricePerKg);

  /// Create a copy of DailyPriceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyPriceItemImplCopyWith<_$DailyPriceItemImpl> get copyWith =>
      __$$DailyPriceItemImplCopyWithImpl<_$DailyPriceItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyPriceItemImplToJson(this);
  }
}

abstract class _DailyPriceItem implements DailyPriceItem {
  const factory _DailyPriceItem({
    @JsonKey(name: 'product_id') required final String productId,
    @JsonKey(name: 'grade_id') required final String gradeId,
    @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero)
    required final double pricePerKg,
  }) = _$DailyPriceItemImpl;

  factory _DailyPriceItem.fromJson(Map<String, dynamic> json) =
      _$DailyPriceItemImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  String get productId;
  @override
  @JsonKey(name: 'grade_id')
  String get gradeId;
  @override
  @JsonKey(name: 'price_per_kg', fromJson: _doubleOrZero)
  double get pricePerKg;

  /// Create a copy of DailyPriceItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyPriceItemImplCopyWith<_$DailyPriceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyPricesResponse _$DailyPricesResponseFromJson(Map<String, dynamic> json) {
  return _DailyPricesResponse.fromJson(json);
}

/// @nodoc
mixin _$DailyPricesResponse {
  String get date => throw _privateConstructorUsedError;
  List<DailyPriceItem>? get prices => throw _privateConstructorUsedError;

  /// Serializes this DailyPricesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyPricesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyPricesResponseCopyWith<DailyPricesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyPricesResponseCopyWith<$Res> {
  factory $DailyPricesResponseCopyWith(
    DailyPricesResponse value,
    $Res Function(DailyPricesResponse) then,
  ) = _$DailyPricesResponseCopyWithImpl<$Res, DailyPricesResponse>;
  @useResult
  $Res call({String date, List<DailyPriceItem>? prices});
}

/// @nodoc
class _$DailyPricesResponseCopyWithImpl<$Res, $Val extends DailyPricesResponse>
    implements $DailyPricesResponseCopyWith<$Res> {
  _$DailyPricesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyPricesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? prices = freezed}) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            prices: freezed == prices
                ? _value.prices
                : prices // ignore: cast_nullable_to_non_nullable
                      as List<DailyPriceItem>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyPricesResponseImplCopyWith<$Res>
    implements $DailyPricesResponseCopyWith<$Res> {
  factory _$$DailyPricesResponseImplCopyWith(
    _$DailyPricesResponseImpl value,
    $Res Function(_$DailyPricesResponseImpl) then,
  ) = __$$DailyPricesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, List<DailyPriceItem>? prices});
}

/// @nodoc
class __$$DailyPricesResponseImplCopyWithImpl<$Res>
    extends _$DailyPricesResponseCopyWithImpl<$Res, _$DailyPricesResponseImpl>
    implements _$$DailyPricesResponseImplCopyWith<$Res> {
  __$$DailyPricesResponseImplCopyWithImpl(
    _$DailyPricesResponseImpl _value,
    $Res Function(_$DailyPricesResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyPricesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? prices = freezed}) {
    return _then(
      _$DailyPricesResponseImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        prices: freezed == prices
            ? _value._prices
            : prices // ignore: cast_nullable_to_non_nullable
                  as List<DailyPriceItem>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyPricesResponseImpl implements _DailyPricesResponse {
  const _$DailyPricesResponseImpl({
    required this.date,
    final List<DailyPriceItem>? prices,
  }) : _prices = prices;

  factory _$DailyPricesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyPricesResponseImplFromJson(json);

  @override
  final String date;
  final List<DailyPriceItem>? _prices;
  @override
  List<DailyPriceItem>? get prices {
    final value = _prices;
    if (value == null) return null;
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DailyPricesResponse(date: $date, prices: $prices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyPricesResponseImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    const DeepCollectionEquality().hash(_prices),
  );

  /// Create a copy of DailyPricesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyPricesResponseImplCopyWith<_$DailyPricesResponseImpl> get copyWith =>
      __$$DailyPricesResponseImplCopyWithImpl<_$DailyPricesResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyPricesResponseImplToJson(this);
  }
}

abstract class _DailyPricesResponse implements DailyPricesResponse {
  const factory _DailyPricesResponse({
    required final String date,
    final List<DailyPriceItem>? prices,
  }) = _$DailyPricesResponseImpl;

  factory _DailyPricesResponse.fromJson(Map<String, dynamic> json) =
      _$DailyPricesResponseImpl.fromJson;

  @override
  String get date;
  @override
  List<DailyPriceItem>? get prices;

  /// Create a copy of DailyPricesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyPricesResponseImplCopyWith<_$DailyPricesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

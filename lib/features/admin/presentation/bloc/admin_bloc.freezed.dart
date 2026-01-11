// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AdminEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStats,
    required TResult Function(String productId, String name, String description)
    createGrade,
    required TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )
    setPrice,
    required TResult Function(String name, String description) createProduct,
    required TResult Function() loadCatalog,
    required TResult Function(String? date) loadDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStats,
    TResult? Function(String productId, String name, String description)?
    createGrade,
    TResult? Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult? Function(String name, String description)? createProduct,
    TResult? Function()? loadCatalog,
    TResult? Function(String? date)? loadDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStats,
    TResult Function(String productId, String name, String description)?
    createGrade,
    TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult Function(String name, String description)? createProduct,
    TResult Function()? loadCatalog,
    TResult Function(String? date)? loadDashboard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStats value) loadStats,
    required TResult Function(_CreateGrade value) createGrade,
    required TResult Function(_SetPrice value) setPrice,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_LoadCatalog value) loadCatalog,
    required TResult Function(_LoadDashboard value) loadDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStats value)? loadStats,
    TResult? Function(_CreateGrade value)? createGrade,
    TResult? Function(_SetPrice value)? setPrice,
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_LoadCatalog value)? loadCatalog,
    TResult? Function(_LoadDashboard value)? loadDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStats value)? loadStats,
    TResult Function(_CreateGrade value)? createGrade,
    TResult Function(_SetPrice value)? setPrice,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_LoadCatalog value)? loadCatalog,
    TResult Function(_LoadDashboard value)? loadDashboard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminEventCopyWith<$Res> {
  factory $AdminEventCopyWith(
    AdminEvent value,
    $Res Function(AdminEvent) then,
  ) = _$AdminEventCopyWithImpl<$Res, AdminEvent>;
}

/// @nodoc
class _$AdminEventCopyWithImpl<$Res, $Val extends AdminEvent>
    implements $AdminEventCopyWith<$Res> {
  _$AdminEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadStatsImplCopyWith<$Res> {
  factory _$$LoadStatsImplCopyWith(
    _$LoadStatsImpl value,
    $Res Function(_$LoadStatsImpl) then,
  ) = __$$LoadStatsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadStatsImplCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$LoadStatsImpl>
    implements _$$LoadStatsImplCopyWith<$Res> {
  __$$LoadStatsImplCopyWithImpl(
    _$LoadStatsImpl _value,
    $Res Function(_$LoadStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadStatsImpl implements _LoadStats {
  const _$LoadStatsImpl();

  @override
  String toString() {
    return 'AdminEvent.loadStats()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadStatsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStats,
    required TResult Function(String productId, String name, String description)
    createGrade,
    required TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )
    setPrice,
    required TResult Function(String name, String description) createProduct,
    required TResult Function() loadCatalog,
    required TResult Function(String? date) loadDashboard,
  }) {
    return loadStats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStats,
    TResult? Function(String productId, String name, String description)?
    createGrade,
    TResult? Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult? Function(String name, String description)? createProduct,
    TResult? Function()? loadCatalog,
    TResult? Function(String? date)? loadDashboard,
  }) {
    return loadStats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStats,
    TResult Function(String productId, String name, String description)?
    createGrade,
    TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult Function(String name, String description)? createProduct,
    TResult Function()? loadCatalog,
    TResult Function(String? date)? loadDashboard,
    required TResult orElse(),
  }) {
    if (loadStats != null) {
      return loadStats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStats value) loadStats,
    required TResult Function(_CreateGrade value) createGrade,
    required TResult Function(_SetPrice value) setPrice,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_LoadCatalog value) loadCatalog,
    required TResult Function(_LoadDashboard value) loadDashboard,
  }) {
    return loadStats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStats value)? loadStats,
    TResult? Function(_CreateGrade value)? createGrade,
    TResult? Function(_SetPrice value)? setPrice,
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_LoadCatalog value)? loadCatalog,
    TResult? Function(_LoadDashboard value)? loadDashboard,
  }) {
    return loadStats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStats value)? loadStats,
    TResult Function(_CreateGrade value)? createGrade,
    TResult Function(_SetPrice value)? setPrice,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_LoadCatalog value)? loadCatalog,
    TResult Function(_LoadDashboard value)? loadDashboard,
    required TResult orElse(),
  }) {
    if (loadStats != null) {
      return loadStats(this);
    }
    return orElse();
  }
}

abstract class _LoadStats implements AdminEvent {
  const factory _LoadStats() = _$LoadStatsImpl;
}

/// @nodoc
abstract class _$$CreateGradeImplCopyWith<$Res> {
  factory _$$CreateGradeImplCopyWith(
    _$CreateGradeImpl value,
    $Res Function(_$CreateGradeImpl) then,
  ) = __$$CreateGradeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, String name, String description});
}

/// @nodoc
class __$$CreateGradeImplCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$CreateGradeImpl>
    implements _$$CreateGradeImplCopyWith<$Res> {
  __$$CreateGradeImplCopyWithImpl(
    _$CreateGradeImpl _value,
    $Res Function(_$CreateGradeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(
      _$CreateGradeImpl(
        null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String,
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateGradeImpl implements _CreateGrade {
  const _$CreateGradeImpl(this.productId, this.name, this.description);

  @override
  final String productId;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'AdminEvent.createGrade(productId: $productId, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGradeImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, name, description);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGradeImplCopyWith<_$CreateGradeImpl> get copyWith =>
      __$$CreateGradeImplCopyWithImpl<_$CreateGradeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStats,
    required TResult Function(String productId, String name, String description)
    createGrade,
    required TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )
    setPrice,
    required TResult Function(String name, String description) createProduct,
    required TResult Function() loadCatalog,
    required TResult Function(String? date) loadDashboard,
  }) {
    return createGrade(productId, name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStats,
    TResult? Function(String productId, String name, String description)?
    createGrade,
    TResult? Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult? Function(String name, String description)? createProduct,
    TResult? Function()? loadCatalog,
    TResult? Function(String? date)? loadDashboard,
  }) {
    return createGrade?.call(productId, name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStats,
    TResult Function(String productId, String name, String description)?
    createGrade,
    TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult Function(String name, String description)? createProduct,
    TResult Function()? loadCatalog,
    TResult Function(String? date)? loadDashboard,
    required TResult orElse(),
  }) {
    if (createGrade != null) {
      return createGrade(productId, name, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStats value) loadStats,
    required TResult Function(_CreateGrade value) createGrade,
    required TResult Function(_SetPrice value) setPrice,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_LoadCatalog value) loadCatalog,
    required TResult Function(_LoadDashboard value) loadDashboard,
  }) {
    return createGrade(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStats value)? loadStats,
    TResult? Function(_CreateGrade value)? createGrade,
    TResult? Function(_SetPrice value)? setPrice,
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_LoadCatalog value)? loadCatalog,
    TResult? Function(_LoadDashboard value)? loadDashboard,
  }) {
    return createGrade?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStats value)? loadStats,
    TResult Function(_CreateGrade value)? createGrade,
    TResult Function(_SetPrice value)? setPrice,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_LoadCatalog value)? loadCatalog,
    TResult Function(_LoadDashboard value)? loadDashboard,
    required TResult orElse(),
  }) {
    if (createGrade != null) {
      return createGrade(this);
    }
    return orElse();
  }
}

abstract class _CreateGrade implements AdminEvent {
  const factory _CreateGrade(
    final String productId,
    final String name,
    final String description,
  ) = _$CreateGradeImpl;

  String get productId;
  String get name;
  String get description;

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGradeImplCopyWith<_$CreateGradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPriceImplCopyWith<$Res> {
  factory _$$SetPriceImplCopyWith(
    _$SetPriceImpl value,
    $Res Function(_$SetPriceImpl) then,
  ) = __$$SetPriceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String date, String productId, String gradeId, double price});
}

/// @nodoc
class __$$SetPriceImplCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$SetPriceImpl>
    implements _$$SetPriceImplCopyWith<$Res> {
  __$$SetPriceImplCopyWithImpl(
    _$SetPriceImpl _value,
    $Res Function(_$SetPriceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? productId = null,
    Object? gradeId = null,
    Object? price = null,
  }) {
    return _then(
      _$SetPriceImpl(
        null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String,
        null == gradeId
            ? _value.gradeId
            : gradeId // ignore: cast_nullable_to_non_nullable
                  as String,
        null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$SetPriceImpl implements _SetPrice {
  const _$SetPriceImpl(this.date, this.productId, this.gradeId, this.price);

  @override
  final String date;
  @override
  final String productId;
  @override
  final String gradeId;
  @override
  final double price;

  @override
  String toString() {
    return 'AdminEvent.setPrice(date: $date, productId: $productId, gradeId: $gradeId, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPriceImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.gradeId, gradeId) || other.gradeId == gradeId) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, productId, gradeId, price);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPriceImplCopyWith<_$SetPriceImpl> get copyWith =>
      __$$SetPriceImplCopyWithImpl<_$SetPriceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStats,
    required TResult Function(String productId, String name, String description)
    createGrade,
    required TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )
    setPrice,
    required TResult Function(String name, String description) createProduct,
    required TResult Function() loadCatalog,
    required TResult Function(String? date) loadDashboard,
  }) {
    return setPrice(date, productId, gradeId, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStats,
    TResult? Function(String productId, String name, String description)?
    createGrade,
    TResult? Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult? Function(String name, String description)? createProduct,
    TResult? Function()? loadCatalog,
    TResult? Function(String? date)? loadDashboard,
  }) {
    return setPrice?.call(date, productId, gradeId, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStats,
    TResult Function(String productId, String name, String description)?
    createGrade,
    TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult Function(String name, String description)? createProduct,
    TResult Function()? loadCatalog,
    TResult Function(String? date)? loadDashboard,
    required TResult orElse(),
  }) {
    if (setPrice != null) {
      return setPrice(date, productId, gradeId, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStats value) loadStats,
    required TResult Function(_CreateGrade value) createGrade,
    required TResult Function(_SetPrice value) setPrice,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_LoadCatalog value) loadCatalog,
    required TResult Function(_LoadDashboard value) loadDashboard,
  }) {
    return setPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStats value)? loadStats,
    TResult? Function(_CreateGrade value)? createGrade,
    TResult? Function(_SetPrice value)? setPrice,
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_LoadCatalog value)? loadCatalog,
    TResult? Function(_LoadDashboard value)? loadDashboard,
  }) {
    return setPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStats value)? loadStats,
    TResult Function(_CreateGrade value)? createGrade,
    TResult Function(_SetPrice value)? setPrice,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_LoadCatalog value)? loadCatalog,
    TResult Function(_LoadDashboard value)? loadDashboard,
    required TResult orElse(),
  }) {
    if (setPrice != null) {
      return setPrice(this);
    }
    return orElse();
  }
}

abstract class _SetPrice implements AdminEvent {
  const factory _SetPrice(
    final String date,
    final String productId,
    final String gradeId,
    final double price,
  ) = _$SetPriceImpl;

  String get date;
  String get productId;
  String get gradeId;
  double get price;

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPriceImplCopyWith<_$SetPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProductImplCopyWith<$Res> {
  factory _$$CreateProductImplCopyWith(
    _$CreateProductImpl value,
    $Res Function(_$CreateProductImpl) then,
  ) = __$$CreateProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$CreateProductImplCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$CreateProductImpl>
    implements _$$CreateProductImplCopyWith<$Res> {
  __$$CreateProductImplCopyWithImpl(
    _$CreateProductImpl _value,
    $Res Function(_$CreateProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? description = null}) {
    return _then(
      _$CreateProductImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateProductImpl implements _CreateProduct {
  const _$CreateProductImpl(this.name, this.description);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'AdminEvent.createProduct(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProductImplCopyWith<_$CreateProductImpl> get copyWith =>
      __$$CreateProductImplCopyWithImpl<_$CreateProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStats,
    required TResult Function(String productId, String name, String description)
    createGrade,
    required TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )
    setPrice,
    required TResult Function(String name, String description) createProduct,
    required TResult Function() loadCatalog,
    required TResult Function(String? date) loadDashboard,
  }) {
    return createProduct(name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStats,
    TResult? Function(String productId, String name, String description)?
    createGrade,
    TResult? Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult? Function(String name, String description)? createProduct,
    TResult? Function()? loadCatalog,
    TResult? Function(String? date)? loadDashboard,
  }) {
    return createProduct?.call(name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStats,
    TResult Function(String productId, String name, String description)?
    createGrade,
    TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult Function(String name, String description)? createProduct,
    TResult Function()? loadCatalog,
    TResult Function(String? date)? loadDashboard,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(name, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStats value) loadStats,
    required TResult Function(_CreateGrade value) createGrade,
    required TResult Function(_SetPrice value) setPrice,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_LoadCatalog value) loadCatalog,
    required TResult Function(_LoadDashboard value) loadDashboard,
  }) {
    return createProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStats value)? loadStats,
    TResult? Function(_CreateGrade value)? createGrade,
    TResult? Function(_SetPrice value)? setPrice,
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_LoadCatalog value)? loadCatalog,
    TResult? Function(_LoadDashboard value)? loadDashboard,
  }) {
    return createProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStats value)? loadStats,
    TResult Function(_CreateGrade value)? createGrade,
    TResult Function(_SetPrice value)? setPrice,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_LoadCatalog value)? loadCatalog,
    TResult Function(_LoadDashboard value)? loadDashboard,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(this);
    }
    return orElse();
  }
}

abstract class _CreateProduct implements AdminEvent {
  const factory _CreateProduct(final String name, final String description) =
      _$CreateProductImpl;

  String get name;
  String get description;

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProductImplCopyWith<_$CreateProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCatalogImplCopyWith<$Res> {
  factory _$$LoadCatalogImplCopyWith(
    _$LoadCatalogImpl value,
    $Res Function(_$LoadCatalogImpl) then,
  ) = __$$LoadCatalogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCatalogImplCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$LoadCatalogImpl>
    implements _$$LoadCatalogImplCopyWith<$Res> {
  __$$LoadCatalogImplCopyWithImpl(
    _$LoadCatalogImpl _value,
    $Res Function(_$LoadCatalogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCatalogImpl implements _LoadCatalog {
  const _$LoadCatalogImpl();

  @override
  String toString() {
    return 'AdminEvent.loadCatalog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCatalogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStats,
    required TResult Function(String productId, String name, String description)
    createGrade,
    required TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )
    setPrice,
    required TResult Function(String name, String description) createProduct,
    required TResult Function() loadCatalog,
    required TResult Function(String? date) loadDashboard,
  }) {
    return loadCatalog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStats,
    TResult? Function(String productId, String name, String description)?
    createGrade,
    TResult? Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult? Function(String name, String description)? createProduct,
    TResult? Function()? loadCatalog,
    TResult? Function(String? date)? loadDashboard,
  }) {
    return loadCatalog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStats,
    TResult Function(String productId, String name, String description)?
    createGrade,
    TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult Function(String name, String description)? createProduct,
    TResult Function()? loadCatalog,
    TResult Function(String? date)? loadDashboard,
    required TResult orElse(),
  }) {
    if (loadCatalog != null) {
      return loadCatalog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStats value) loadStats,
    required TResult Function(_CreateGrade value) createGrade,
    required TResult Function(_SetPrice value) setPrice,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_LoadCatalog value) loadCatalog,
    required TResult Function(_LoadDashboard value) loadDashboard,
  }) {
    return loadCatalog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStats value)? loadStats,
    TResult? Function(_CreateGrade value)? createGrade,
    TResult? Function(_SetPrice value)? setPrice,
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_LoadCatalog value)? loadCatalog,
    TResult? Function(_LoadDashboard value)? loadDashboard,
  }) {
    return loadCatalog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStats value)? loadStats,
    TResult Function(_CreateGrade value)? createGrade,
    TResult Function(_SetPrice value)? setPrice,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_LoadCatalog value)? loadCatalog,
    TResult Function(_LoadDashboard value)? loadDashboard,
    required TResult orElse(),
  }) {
    if (loadCatalog != null) {
      return loadCatalog(this);
    }
    return orElse();
  }
}

abstract class _LoadCatalog implements AdminEvent {
  const factory _LoadCatalog() = _$LoadCatalogImpl;
}

/// @nodoc
abstract class _$$LoadDashboardImplCopyWith<$Res> {
  factory _$$LoadDashboardImplCopyWith(
    _$LoadDashboardImpl value,
    $Res Function(_$LoadDashboardImpl) then,
  ) = __$$LoadDashboardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? date});
}

/// @nodoc
class __$$LoadDashboardImplCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$LoadDashboardImpl>
    implements _$$LoadDashboardImplCopyWith<$Res> {
  __$$LoadDashboardImplCopyWithImpl(
    _$LoadDashboardImpl _value,
    $Res Function(_$LoadDashboardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = freezed}) {
    return _then(
      _$LoadDashboardImpl(
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$LoadDashboardImpl implements _LoadDashboard {
  const _$LoadDashboardImpl({this.date});

  @override
  final String? date;

  @override
  String toString() {
    return 'AdminEvent.loadDashboard(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDashboardImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDashboardImplCopyWith<_$LoadDashboardImpl> get copyWith =>
      __$$LoadDashboardImplCopyWithImpl<_$LoadDashboardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadStats,
    required TResult Function(String productId, String name, String description)
    createGrade,
    required TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )
    setPrice,
    required TResult Function(String name, String description) createProduct,
    required TResult Function() loadCatalog,
    required TResult Function(String? date) loadDashboard,
  }) {
    return loadDashboard(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadStats,
    TResult? Function(String productId, String name, String description)?
    createGrade,
    TResult? Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult? Function(String name, String description)? createProduct,
    TResult? Function()? loadCatalog,
    TResult? Function(String? date)? loadDashboard,
  }) {
    return loadDashboard?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadStats,
    TResult Function(String productId, String name, String description)?
    createGrade,
    TResult Function(
      String date,
      String productId,
      String gradeId,
      double price,
    )?
    setPrice,
    TResult Function(String name, String description)? createProduct,
    TResult Function()? loadCatalog,
    TResult Function(String? date)? loadDashboard,
    required TResult orElse(),
  }) {
    if (loadDashboard != null) {
      return loadDashboard(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStats value) loadStats,
    required TResult Function(_CreateGrade value) createGrade,
    required TResult Function(_SetPrice value) setPrice,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_LoadCatalog value) loadCatalog,
    required TResult Function(_LoadDashboard value) loadDashboard,
  }) {
    return loadDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStats value)? loadStats,
    TResult? Function(_CreateGrade value)? createGrade,
    TResult? Function(_SetPrice value)? setPrice,
    TResult? Function(_CreateProduct value)? createProduct,
    TResult? Function(_LoadCatalog value)? loadCatalog,
    TResult? Function(_LoadDashboard value)? loadDashboard,
  }) {
    return loadDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStats value)? loadStats,
    TResult Function(_CreateGrade value)? createGrade,
    TResult Function(_SetPrice value)? setPrice,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_LoadCatalog value)? loadCatalog,
    TResult Function(_LoadDashboard value)? loadDashboard,
    required TResult orElse(),
  }) {
    if (loadDashboard != null) {
      return loadDashboard(this);
    }
    return orElse();
  }
}

abstract class _LoadDashboard implements AdminEvent {
  const factory _LoadDashboard({final String? date}) = _$LoadDashboardImpl;

  String? get date;

  /// Create a copy of AdminEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDashboardImplCopyWith<_$LoadDashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserStats stats) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
    required TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )
    catalog,
    required TResult Function(DashboardResponse dashboard) dashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserStats stats)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
    TResult? Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult? Function(DashboardResponse dashboard)? dashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserStats stats)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult Function(DashboardResponse dashboard)? dashboard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Catalog value) catalog,
    required TResult Function(_Dashboard value) dashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Catalog value)? catalog,
    TResult? Function(_Dashboard value)? dashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Catalog value)? catalog,
    TResult Function(_Dashboard value)? dashboard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStateCopyWith<$Res> {
  factory $AdminStateCopyWith(
    AdminState value,
    $Res Function(AdminState) then,
  ) = _$AdminStateCopyWithImpl<$Res, AdminState>;
}

/// @nodoc
class _$AdminStateCopyWithImpl<$Res, $Val extends AdminState>
    implements $AdminStateCopyWith<$Res> {
  _$AdminStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AdminState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserStats stats) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
    required TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )
    catalog,
    required TResult Function(DashboardResponse dashboard) dashboard,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserStats stats)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
    TResult? Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult? Function(DashboardResponse dashboard)? dashboard,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserStats stats)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult Function(DashboardResponse dashboard)? dashboard,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Catalog value) catalog,
    required TResult Function(_Dashboard value) dashboard,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Catalog value)? catalog,
    TResult? Function(_Dashboard value)? dashboard,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Catalog value)? catalog,
    TResult Function(_Dashboard value)? dashboard,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdminState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AdminState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserStats stats) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
    required TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )
    catalog,
    required TResult Function(DashboardResponse dashboard) dashboard,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserStats stats)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
    TResult? Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult? Function(DashboardResponse dashboard)? dashboard,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserStats stats)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult Function(DashboardResponse dashboard)? dashboard,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Catalog value) catalog,
    required TResult Function(_Dashboard value) dashboard,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Catalog value)? catalog,
    TResult? Function(_Dashboard value)? dashboard,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Catalog value)? catalog,
    TResult Function(_Dashboard value)? dashboard,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AdminState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserStats stats});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stats = null}) {
    return _then(
      _$LoadedImpl(
        null == stats
            ? _value.stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as UserStats,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.stats);

  @override
  final UserStats stats;

  @override
  String toString() {
    return 'AdminState.loaded(stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stats);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserStats stats) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
    required TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )
    catalog,
    required TResult Function(DashboardResponse dashboard) dashboard,
  }) {
    return loaded(stats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserStats stats)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
    TResult? Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult? Function(DashboardResponse dashboard)? dashboard,
  }) {
    return loaded?.call(stats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserStats stats)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult Function(DashboardResponse dashboard)? dashboard,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Catalog value) catalog,
    required TResult Function(_Dashboard value) dashboard,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Catalog value)? catalog,
    TResult? Function(_Dashboard value)? dashboard,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Catalog value)? catalog,
    TResult Function(_Dashboard value)? dashboard,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AdminState {
  const factory _Loaded(final UserStats stats) = _$LoadedImpl;

  UserStats get stats;

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SuccessImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AdminState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserStats stats) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
    required TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )
    catalog,
    required TResult Function(DashboardResponse dashboard) dashboard,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserStats stats)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
    TResult? Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult? Function(DashboardResponse dashboard)? dashboard,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserStats stats)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult Function(DashboardResponse dashboard)? dashboard,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Catalog value) catalog,
    required TResult Function(_Dashboard value) dashboard,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Catalog value)? catalog,
    TResult? Function(_Dashboard value)? dashboard,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Catalog value)? catalog,
    TResult Function(_Dashboard value)? dashboard,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AdminState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
    _$FailureImpl value,
    $Res Function(_$FailureImpl) then,
  ) = __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$FailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AdminState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserStats stats) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
    required TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )
    catalog,
    required TResult Function(DashboardResponse dashboard) dashboard,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserStats stats)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
    TResult? Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult? Function(DashboardResponse dashboard)? dashboard,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserStats stats)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult Function(DashboardResponse dashboard)? dashboard,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Catalog value) catalog,
    required TResult Function(_Dashboard value) dashboard,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Catalog value)? catalog,
    TResult? Function(_Dashboard value)? dashboard,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Catalog value)? catalog,
    TResult Function(_Dashboard value)? dashboard,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AdminState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CatalogImplCopyWith<$Res> {
  factory _$$CatalogImplCopyWith(
    _$CatalogImpl value,
    $Res Function(_$CatalogImpl) then,
  ) = __$$CatalogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<Product> products,
    List<Grade> grades,
    DailyPricesResponse prices,
  });

  $DailyPricesResponseCopyWith<$Res> get prices;
}

/// @nodoc
class __$$CatalogImplCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$CatalogImpl>
    implements _$$CatalogImplCopyWith<$Res> {
  __$$CatalogImplCopyWithImpl(
    _$CatalogImpl _value,
    $Res Function(_$CatalogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? grades = null,
    Object? prices = null,
  }) {
    return _then(
      _$CatalogImpl(
        null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<Product>,
        null == grades
            ? _value._grades
            : grades // ignore: cast_nullable_to_non_nullable
                  as List<Grade>,
        null == prices
            ? _value.prices
            : prices // ignore: cast_nullable_to_non_nullable
                  as DailyPricesResponse,
      ),
    );
  }

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyPricesResponseCopyWith<$Res> get prices {
    return $DailyPricesResponseCopyWith<$Res>(_value.prices, (value) {
      return _then(_value.copyWith(prices: value));
    });
  }
}

/// @nodoc

class _$CatalogImpl implements _Catalog {
  const _$CatalogImpl(
    final List<Product> products,
    final List<Grade> grades,
    this.prices,
  ) : _products = products,
      _grades = grades;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Grade> _grades;
  @override
  List<Grade> get grades {
    if (_grades is EqualUnmodifiableListView) return _grades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grades);
  }

  @override
  final DailyPricesResponse prices;

  @override
  String toString() {
    return 'AdminState.catalog(products: $products, grades: $grades, prices: $prices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._grades, _grades) &&
            (identical(other.prices, prices) || other.prices == prices));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_products),
    const DeepCollectionEquality().hash(_grades),
    prices,
  );

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      __$$CatalogImplCopyWithImpl<_$CatalogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserStats stats) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
    required TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )
    catalog,
    required TResult Function(DashboardResponse dashboard) dashboard,
  }) {
    return catalog(products, grades, prices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserStats stats)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
    TResult? Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult? Function(DashboardResponse dashboard)? dashboard,
  }) {
    return catalog?.call(products, grades, prices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserStats stats)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult Function(DashboardResponse dashboard)? dashboard,
    required TResult orElse(),
  }) {
    if (catalog != null) {
      return catalog(products, grades, prices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Catalog value) catalog,
    required TResult Function(_Dashboard value) dashboard,
  }) {
    return catalog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Catalog value)? catalog,
    TResult? Function(_Dashboard value)? dashboard,
  }) {
    return catalog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Catalog value)? catalog,
    TResult Function(_Dashboard value)? dashboard,
    required TResult orElse(),
  }) {
    if (catalog != null) {
      return catalog(this);
    }
    return orElse();
  }
}

abstract class _Catalog implements AdminState {
  const factory _Catalog(
    final List<Product> products,
    final List<Grade> grades,
    final DailyPricesResponse prices,
  ) = _$CatalogImpl;

  List<Product> get products;
  List<Grade> get grades;
  DailyPricesResponse get prices;

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DashboardImplCopyWith<$Res> {
  factory _$$DashboardImplCopyWith(
    _$DashboardImpl value,
    $Res Function(_$DashboardImpl) then,
  ) = __$$DashboardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DashboardResponse dashboard});

  $DashboardResponseCopyWith<$Res> get dashboard;
}

/// @nodoc
class __$$DashboardImplCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res, _$DashboardImpl>
    implements _$$DashboardImplCopyWith<$Res> {
  __$$DashboardImplCopyWithImpl(
    _$DashboardImpl _value,
    $Res Function(_$DashboardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dashboard = null}) {
    return _then(
      _$DashboardImpl(
        null == dashboard
            ? _value.dashboard
            : dashboard // ignore: cast_nullable_to_non_nullable
                  as DashboardResponse,
      ),
    );
  }

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardResponseCopyWith<$Res> get dashboard {
    return $DashboardResponseCopyWith<$Res>(_value.dashboard, (value) {
      return _then(_value.copyWith(dashboard: value));
    });
  }
}

/// @nodoc

class _$DashboardImpl implements _Dashboard {
  const _$DashboardImpl(this.dashboard);

  @override
  final DashboardResponse dashboard;

  @override
  String toString() {
    return 'AdminState.dashboard(dashboard: $dashboard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardImpl &&
            (identical(other.dashboard, dashboard) ||
                other.dashboard == dashboard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dashboard);

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardImplCopyWith<_$DashboardImpl> get copyWith =>
      __$$DashboardImplCopyWithImpl<_$DashboardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserStats stats) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) failure,
    required TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )
    catalog,
    required TResult Function(DashboardResponse dashboard) dashboard,
  }) {
    return dashboard(this.dashboard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserStats stats)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? failure,
    TResult? Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult? Function(DashboardResponse dashboard)? dashboard,
  }) {
    return dashboard?.call(this.dashboard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserStats stats)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? failure,
    TResult Function(
      List<Product> products,
      List<Grade> grades,
      DailyPricesResponse prices,
    )?
    catalog,
    TResult Function(DashboardResponse dashboard)? dashboard,
    required TResult orElse(),
  }) {
    if (dashboard != null) {
      return dashboard(this.dashboard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Catalog value) catalog,
    required TResult Function(_Dashboard value) dashboard,
  }) {
    return dashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Catalog value)? catalog,
    TResult? Function(_Dashboard value)? dashboard,
  }) {
    return dashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Catalog value)? catalog,
    TResult Function(_Dashboard value)? dashboard,
    required TResult orElse(),
  }) {
    if (dashboard != null) {
      return dashboard(this);
    }
    return orElse();
  }
}

abstract class _Dashboard implements AdminState {
  const factory _Dashboard(final DashboardResponse dashboard) = _$DashboardImpl;

  DashboardResponse get dashboard;

  /// Create a copy of AdminState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardImplCopyWith<_$DashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

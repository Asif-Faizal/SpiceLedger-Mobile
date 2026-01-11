// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DashboardUsersSummary _$DashboardUsersSummaryFromJson(
  Map<String, dynamic> json,
) {
  return _DashboardUsersSummary.fromJson(json);
}

/// @nodoc
mixin _$DashboardUsersSummary {
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_new')
  int get weeklyNew => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_change_pct')
  double get weeklyChangePct => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_change_pct')
  double get monthlyChangePct => throw _privateConstructorUsedError;

  /// Serializes this DashboardUsersSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardUsersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardUsersSummaryCopyWith<DashboardUsersSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardUsersSummaryCopyWith<$Res> {
  factory $DashboardUsersSummaryCopyWith(
    DashboardUsersSummary value,
    $Res Function(DashboardUsersSummary) then,
  ) = _$DashboardUsersSummaryCopyWithImpl<$Res, DashboardUsersSummary>;
  @useResult
  $Res call({
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'weekly_new') int weeklyNew,
    @JsonKey(name: 'weekly_change_pct') double weeklyChangePct,
    @JsonKey(name: 'monthly_change_pct') double monthlyChangePct,
  });
}

/// @nodoc
class _$DashboardUsersSummaryCopyWithImpl<
  $Res,
  $Val extends DashboardUsersSummary
>
    implements $DashboardUsersSummaryCopyWith<$Res> {
  _$DashboardUsersSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardUsersSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? weeklyNew = null,
    Object? weeklyChangePct = null,
    Object? monthlyChangePct = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            weeklyNew: null == weeklyNew
                ? _value.weeklyNew
                : weeklyNew // ignore: cast_nullable_to_non_nullable
                      as int,
            weeklyChangePct: null == weeklyChangePct
                ? _value.weeklyChangePct
                : weeklyChangePct // ignore: cast_nullable_to_non_nullable
                      as double,
            monthlyChangePct: null == monthlyChangePct
                ? _value.monthlyChangePct
                : monthlyChangePct // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DashboardUsersSummaryImplCopyWith<$Res>
    implements $DashboardUsersSummaryCopyWith<$Res> {
  factory _$$DashboardUsersSummaryImplCopyWith(
    _$DashboardUsersSummaryImpl value,
    $Res Function(_$DashboardUsersSummaryImpl) then,
  ) = __$$DashboardUsersSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'weekly_new') int weeklyNew,
    @JsonKey(name: 'weekly_change_pct') double weeklyChangePct,
    @JsonKey(name: 'monthly_change_pct') double monthlyChangePct,
  });
}

/// @nodoc
class __$$DashboardUsersSummaryImplCopyWithImpl<$Res>
    extends
        _$DashboardUsersSummaryCopyWithImpl<$Res, _$DashboardUsersSummaryImpl>
    implements _$$DashboardUsersSummaryImplCopyWith<$Res> {
  __$$DashboardUsersSummaryImplCopyWithImpl(
    _$DashboardUsersSummaryImpl _value,
    $Res Function(_$DashboardUsersSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardUsersSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? weeklyNew = null,
    Object? weeklyChangePct = null,
    Object? monthlyChangePct = null,
  }) {
    return _then(
      _$DashboardUsersSummaryImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        weeklyNew: null == weeklyNew
            ? _value.weeklyNew
            : weeklyNew // ignore: cast_nullable_to_non_nullable
                  as int,
        weeklyChangePct: null == weeklyChangePct
            ? _value.weeklyChangePct
            : weeklyChangePct // ignore: cast_nullable_to_non_nullable
                  as double,
        monthlyChangePct: null == monthlyChangePct
            ? _value.monthlyChangePct
            : monthlyChangePct // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardUsersSummaryImpl implements _DashboardUsersSummary {
  const _$DashboardUsersSummaryImpl({
    @JsonKey(name: 'total') required this.total,
    @JsonKey(name: 'weekly_new') required this.weeklyNew,
    @JsonKey(name: 'weekly_change_pct') required this.weeklyChangePct,
    @JsonKey(name: 'monthly_change_pct') required this.monthlyChangePct,
  });

  factory _$DashboardUsersSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardUsersSummaryImplFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'weekly_new')
  final int weeklyNew;
  @override
  @JsonKey(name: 'weekly_change_pct')
  final double weeklyChangePct;
  @override
  @JsonKey(name: 'monthly_change_pct')
  final double monthlyChangePct;

  @override
  String toString() {
    return 'DashboardUsersSummary(total: $total, weeklyNew: $weeklyNew, weeklyChangePct: $weeklyChangePct, monthlyChangePct: $monthlyChangePct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardUsersSummaryImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.weeklyNew, weeklyNew) ||
                other.weeklyNew == weeklyNew) &&
            (identical(other.weeklyChangePct, weeklyChangePct) ||
                other.weeklyChangePct == weeklyChangePct) &&
            (identical(other.monthlyChangePct, monthlyChangePct) ||
                other.monthlyChangePct == monthlyChangePct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    weeklyNew,
    weeklyChangePct,
    monthlyChangePct,
  );

  /// Create a copy of DashboardUsersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardUsersSummaryImplCopyWith<_$DashboardUsersSummaryImpl>
  get copyWith =>
      __$$DashboardUsersSummaryImplCopyWithImpl<_$DashboardUsersSummaryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardUsersSummaryImplToJson(this);
  }
}

abstract class _DashboardUsersSummary implements DashboardUsersSummary {
  const factory _DashboardUsersSummary({
    @JsonKey(name: 'total') required final int total,
    @JsonKey(name: 'weekly_new') required final int weeklyNew,
    @JsonKey(name: 'weekly_change_pct') required final double weeklyChangePct,
    @JsonKey(name: 'monthly_change_pct') required final double monthlyChangePct,
  }) = _$DashboardUsersSummaryImpl;

  factory _DashboardUsersSummary.fromJson(Map<String, dynamic> json) =
      _$DashboardUsersSummaryImpl.fromJson;

  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'weekly_new')
  int get weeklyNew;
  @override
  @JsonKey(name: 'weekly_change_pct')
  double get weeklyChangePct;
  @override
  @JsonKey(name: 'monthly_change_pct')
  double get monthlyChangePct;

  /// Create a copy of DashboardUsersSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardUsersSummaryImplCopyWith<_$DashboardUsersSummaryImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DashboardProductsSummary _$DashboardProductsSummaryFromJson(
  Map<String, dynamic> json,
) {
  return _DashboardProductsSummary.fromJson(json);
}

/// @nodoc
mixin _$DashboardProductsSummary {
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_change_pct')
  double get monthlyChangePct => throw _privateConstructorUsedError;

  /// Serializes this DashboardProductsSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardProductsSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardProductsSummaryCopyWith<DashboardProductsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardProductsSummaryCopyWith<$Res> {
  factory $DashboardProductsSummaryCopyWith(
    DashboardProductsSummary value,
    $Res Function(DashboardProductsSummary) then,
  ) = _$DashboardProductsSummaryCopyWithImpl<$Res, DashboardProductsSummary>;
  @useResult
  $Res call({
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'monthly_change_pct') double monthlyChangePct,
  });
}

/// @nodoc
class _$DashboardProductsSummaryCopyWithImpl<
  $Res,
  $Val extends DashboardProductsSummary
>
    implements $DashboardProductsSummaryCopyWith<$Res> {
  _$DashboardProductsSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardProductsSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? total = null, Object? monthlyChangePct = null}) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            monthlyChangePct: null == monthlyChangePct
                ? _value.monthlyChangePct
                : monthlyChangePct // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DashboardProductsSummaryImplCopyWith<$Res>
    implements $DashboardProductsSummaryCopyWith<$Res> {
  factory _$$DashboardProductsSummaryImplCopyWith(
    _$DashboardProductsSummaryImpl value,
    $Res Function(_$DashboardProductsSummaryImpl) then,
  ) = __$$DashboardProductsSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'monthly_change_pct') double monthlyChangePct,
  });
}

/// @nodoc
class __$$DashboardProductsSummaryImplCopyWithImpl<$Res>
    extends
        _$DashboardProductsSummaryCopyWithImpl<
          $Res,
          _$DashboardProductsSummaryImpl
        >
    implements _$$DashboardProductsSummaryImplCopyWith<$Res> {
  __$$DashboardProductsSummaryImplCopyWithImpl(
    _$DashboardProductsSummaryImpl _value,
    $Res Function(_$DashboardProductsSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardProductsSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? total = null, Object? monthlyChangePct = null}) {
    return _then(
      _$DashboardProductsSummaryImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        monthlyChangePct: null == monthlyChangePct
            ? _value.monthlyChangePct
            : monthlyChangePct // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardProductsSummaryImpl implements _DashboardProductsSummary {
  const _$DashboardProductsSummaryImpl({
    @JsonKey(name: 'total') required this.total,
    @JsonKey(name: 'monthly_change_pct') required this.monthlyChangePct,
  });

  factory _$DashboardProductsSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardProductsSummaryImplFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'monthly_change_pct')
  final double monthlyChangePct;

  @override
  String toString() {
    return 'DashboardProductsSummary(total: $total, monthlyChangePct: $monthlyChangePct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardProductsSummaryImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.monthlyChangePct, monthlyChangePct) ||
                other.monthlyChangePct == monthlyChangePct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, monthlyChangePct);

  /// Create a copy of DashboardProductsSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardProductsSummaryImplCopyWith<_$DashboardProductsSummaryImpl>
  get copyWith =>
      __$$DashboardProductsSummaryImplCopyWithImpl<
        _$DashboardProductsSummaryImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardProductsSummaryImplToJson(this);
  }
}

abstract class _DashboardProductsSummary implements DashboardProductsSummary {
  const factory _DashboardProductsSummary({
    @JsonKey(name: 'total') required final int total,
    @JsonKey(name: 'monthly_change_pct') required final double monthlyChangePct,
  }) = _$DashboardProductsSummaryImpl;

  factory _DashboardProductsSummary.fromJson(Map<String, dynamic> json) =
      _$DashboardProductsSummaryImpl.fromJson;

  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'monthly_change_pct')
  double get monthlyChangePct;

  /// Create a copy of DashboardProductsSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardProductsSummaryImplCopyWith<_$DashboardProductsSummaryImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DashboardGradesSummary _$DashboardGradesSummaryFromJson(
  Map<String, dynamic> json,
) {
  return _DashboardGradesSummary.fromJson(json);
}

/// @nodoc
mixin _$DashboardGradesSummary {
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;

  /// Serializes this DashboardGradesSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardGradesSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardGradesSummaryCopyWith<DashboardGradesSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardGradesSummaryCopyWith<$Res> {
  factory $DashboardGradesSummaryCopyWith(
    DashboardGradesSummary value,
    $Res Function(DashboardGradesSummary) then,
  ) = _$DashboardGradesSummaryCopyWithImpl<$Res, DashboardGradesSummary>;
  @useResult
  $Res call({@JsonKey(name: 'total') int total});
}

/// @nodoc
class _$DashboardGradesSummaryCopyWithImpl<
  $Res,
  $Val extends DashboardGradesSummary
>
    implements $DashboardGradesSummaryCopyWith<$Res> {
  _$DashboardGradesSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardGradesSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? total = null}) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DashboardGradesSummaryImplCopyWith<$Res>
    implements $DashboardGradesSummaryCopyWith<$Res> {
  factory _$$DashboardGradesSummaryImplCopyWith(
    _$DashboardGradesSummaryImpl value,
    $Res Function(_$DashboardGradesSummaryImpl) then,
  ) = __$$DashboardGradesSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'total') int total});
}

/// @nodoc
class __$$DashboardGradesSummaryImplCopyWithImpl<$Res>
    extends
        _$DashboardGradesSummaryCopyWithImpl<$Res, _$DashboardGradesSummaryImpl>
    implements _$$DashboardGradesSummaryImplCopyWith<$Res> {
  __$$DashboardGradesSummaryImplCopyWithImpl(
    _$DashboardGradesSummaryImpl _value,
    $Res Function(_$DashboardGradesSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardGradesSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? total = null}) {
    return _then(
      _$DashboardGradesSummaryImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardGradesSummaryImpl implements _DashboardGradesSummary {
  const _$DashboardGradesSummaryImpl({
    @JsonKey(name: 'total') required this.total,
  });

  factory _$DashboardGradesSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardGradesSummaryImplFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int total;

  @override
  String toString() {
    return 'DashboardGradesSummary(total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardGradesSummaryImpl &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total);

  /// Create a copy of DashboardGradesSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardGradesSummaryImplCopyWith<_$DashboardGradesSummaryImpl>
  get copyWith =>
      __$$DashboardGradesSummaryImplCopyWithImpl<_$DashboardGradesSummaryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardGradesSummaryImplToJson(this);
  }
}

abstract class _DashboardGradesSummary implements DashboardGradesSummary {
  const factory _DashboardGradesSummary({
    @JsonKey(name: 'total') required final int total,
  }) = _$DashboardGradesSummaryImpl;

  factory _DashboardGradesSummary.fromJson(Map<String, dynamic> json) =
      _$DashboardGradesSummaryImpl.fromJson;

  @override
  @JsonKey(name: 'total')
  int get total;

  /// Create a copy of DashboardGradesSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardGradesSummaryImplCopyWith<_$DashboardGradesSummaryImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DashboardPriceUpdate _$DashboardPriceUpdateFromJson(Map<String, dynamic> json) {
  return _DashboardPriceUpdate.fromJson(json);
}

/// @nodoc
mixin _$DashboardPriceUpdate {
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  String get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade_id')
  String get gradeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade')
  String get grade => throw _privateConstructorUsedError;
  @JsonKey(name: 'price', fromJson: _doubleOrZero)
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_date')
  String get previousDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)
  double get previousPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'change_delta', fromJson: _doubleOrZero)
  double get changeDelta => throw _privateConstructorUsedError;
  @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)
  double get changePercent => throw _privateConstructorUsedError;

  /// Serializes this DashboardPriceUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardPriceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardPriceUpdateCopyWith<DashboardPriceUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardPriceUpdateCopyWith<$Res> {
  factory $DashboardPriceUpdateCopyWith(
    DashboardPriceUpdate value,
    $Res Function(DashboardPriceUpdate) then,
  ) = _$DashboardPriceUpdateCopyWithImpl<$Res, DashboardPriceUpdate>;
  @useResult
  $Res call({
    @JsonKey(name: 'date') String date,
    @JsonKey(name: 'product_id') String productId,
    @JsonKey(name: 'product') String product,
    @JsonKey(name: 'grade_id') String gradeId,
    @JsonKey(name: 'grade') String grade,
    @JsonKey(name: 'price', fromJson: _doubleOrZero) double price,
    @JsonKey(name: 'previous_date') String previousDate,
    @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)
    double previousPrice,
    @JsonKey(name: 'change_delta', fromJson: _doubleOrZero) double changeDelta,
    @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)
    double changePercent,
  });
}

/// @nodoc
class _$DashboardPriceUpdateCopyWithImpl<
  $Res,
  $Val extends DashboardPriceUpdate
>
    implements $DashboardPriceUpdateCopyWith<$Res> {
  _$DashboardPriceUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardPriceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? productId = null,
    Object? product = null,
    Object? gradeId = null,
    Object? grade = null,
    Object? price = null,
    Object? previousDate = null,
    Object? previousPrice = null,
    Object? changeDelta = null,
    Object? changePercent = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as String,
            product: null == product
                ? _value.product
                : product // ignore: cast_nullable_to_non_nullable
                      as String,
            gradeId: null == gradeId
                ? _value.gradeId
                : gradeId // ignore: cast_nullable_to_non_nullable
                      as String,
            grade: null == grade
                ? _value.grade
                : grade // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            previousDate: null == previousDate
                ? _value.previousDate
                : previousDate // ignore: cast_nullable_to_non_nullable
                      as String,
            previousPrice: null == previousPrice
                ? _value.previousPrice
                : previousPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            changeDelta: null == changeDelta
                ? _value.changeDelta
                : changeDelta // ignore: cast_nullable_to_non_nullable
                      as double,
            changePercent: null == changePercent
                ? _value.changePercent
                : changePercent // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DashboardPriceUpdateImplCopyWith<$Res>
    implements $DashboardPriceUpdateCopyWith<$Res> {
  factory _$$DashboardPriceUpdateImplCopyWith(
    _$DashboardPriceUpdateImpl value,
    $Res Function(_$DashboardPriceUpdateImpl) then,
  ) = __$$DashboardPriceUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'date') String date,
    @JsonKey(name: 'product_id') String productId,
    @JsonKey(name: 'product') String product,
    @JsonKey(name: 'grade_id') String gradeId,
    @JsonKey(name: 'grade') String grade,
    @JsonKey(name: 'price', fromJson: _doubleOrZero) double price,
    @JsonKey(name: 'previous_date') String previousDate,
    @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)
    double previousPrice,
    @JsonKey(name: 'change_delta', fromJson: _doubleOrZero) double changeDelta,
    @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)
    double changePercent,
  });
}

/// @nodoc
class __$$DashboardPriceUpdateImplCopyWithImpl<$Res>
    extends _$DashboardPriceUpdateCopyWithImpl<$Res, _$DashboardPriceUpdateImpl>
    implements _$$DashboardPriceUpdateImplCopyWith<$Res> {
  __$$DashboardPriceUpdateImplCopyWithImpl(
    _$DashboardPriceUpdateImpl _value,
    $Res Function(_$DashboardPriceUpdateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardPriceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? productId = null,
    Object? product = null,
    Object? gradeId = null,
    Object? grade = null,
    Object? price = null,
    Object? previousDate = null,
    Object? previousPrice = null,
    Object? changeDelta = null,
    Object? changePercent = null,
  }) {
    return _then(
      _$DashboardPriceUpdateImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String,
        product: null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                  as String,
        gradeId: null == gradeId
            ? _value.gradeId
            : gradeId // ignore: cast_nullable_to_non_nullable
                  as String,
        grade: null == grade
            ? _value.grade
            : grade // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        previousDate: null == previousDate
            ? _value.previousDate
            : previousDate // ignore: cast_nullable_to_non_nullable
                  as String,
        previousPrice: null == previousPrice
            ? _value.previousPrice
            : previousPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        changeDelta: null == changeDelta
            ? _value.changeDelta
            : changeDelta // ignore: cast_nullable_to_non_nullable
                  as double,
        changePercent: null == changePercent
            ? _value.changePercent
            : changePercent // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardPriceUpdateImpl implements _DashboardPriceUpdate {
  const _$DashboardPriceUpdateImpl({
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'product') required this.product,
    @JsonKey(name: 'grade_id') required this.gradeId,
    @JsonKey(name: 'grade') required this.grade,
    @JsonKey(name: 'price', fromJson: _doubleOrZero) required this.price,
    @JsonKey(name: 'previous_date') required this.previousDate,
    @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)
    required this.previousPrice,
    @JsonKey(name: 'change_delta', fromJson: _doubleOrZero)
    required this.changeDelta,
    @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)
    required this.changePercent,
  });

  factory _$DashboardPriceUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardPriceUpdateImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  @JsonKey(name: 'product')
  final String product;
  @override
  @JsonKey(name: 'grade_id')
  final String gradeId;
  @override
  @JsonKey(name: 'grade')
  final String grade;
  @override
  @JsonKey(name: 'price', fromJson: _doubleOrZero)
  final double price;
  @override
  @JsonKey(name: 'previous_date')
  final String previousDate;
  @override
  @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)
  final double previousPrice;
  @override
  @JsonKey(name: 'change_delta', fromJson: _doubleOrZero)
  final double changeDelta;
  @override
  @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)
  final double changePercent;

  @override
  String toString() {
    return 'DashboardPriceUpdate(date: $date, productId: $productId, product: $product, gradeId: $gradeId, grade: $grade, price: $price, previousDate: $previousDate, previousPrice: $previousPrice, changeDelta: $changeDelta, changePercent: $changePercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardPriceUpdateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.gradeId, gradeId) || other.gradeId == gradeId) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.previousDate, previousDate) ||
                other.previousDate == previousDate) &&
            (identical(other.previousPrice, previousPrice) ||
                other.previousPrice == previousPrice) &&
            (identical(other.changeDelta, changeDelta) ||
                other.changeDelta == changeDelta) &&
            (identical(other.changePercent, changePercent) ||
                other.changePercent == changePercent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    productId,
    product,
    gradeId,
    grade,
    price,
    previousDate,
    previousPrice,
    changeDelta,
    changePercent,
  );

  /// Create a copy of DashboardPriceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardPriceUpdateImplCopyWith<_$DashboardPriceUpdateImpl>
  get copyWith =>
      __$$DashboardPriceUpdateImplCopyWithImpl<_$DashboardPriceUpdateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardPriceUpdateImplToJson(this);
  }
}

abstract class _DashboardPriceUpdate implements DashboardPriceUpdate {
  const factory _DashboardPriceUpdate({
    @JsonKey(name: 'date') required final String date,
    @JsonKey(name: 'product_id') required final String productId,
    @JsonKey(name: 'product') required final String product,
    @JsonKey(name: 'grade_id') required final String gradeId,
    @JsonKey(name: 'grade') required final String grade,
    @JsonKey(name: 'price', fromJson: _doubleOrZero)
    required final double price,
    @JsonKey(name: 'previous_date') required final String previousDate,
    @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)
    required final double previousPrice,
    @JsonKey(name: 'change_delta', fromJson: _doubleOrZero)
    required final double changeDelta,
    @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)
    required final double changePercent,
  }) = _$DashboardPriceUpdateImpl;

  factory _DashboardPriceUpdate.fromJson(Map<String, dynamic> json) =
      _$DashboardPriceUpdateImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'product_id')
  String get productId;
  @override
  @JsonKey(name: 'product')
  String get product;
  @override
  @JsonKey(name: 'grade_id')
  String get gradeId;
  @override
  @JsonKey(name: 'grade')
  String get grade;
  @override
  @JsonKey(name: 'price', fromJson: _doubleOrZero)
  double get price;
  @override
  @JsonKey(name: 'previous_date')
  String get previousDate;
  @override
  @JsonKey(name: 'previous_price', fromJson: _doubleOrZero)
  double get previousPrice;
  @override
  @JsonKey(name: 'change_delta', fromJson: _doubleOrZero)
  double get changeDelta;
  @override
  @JsonKey(name: 'change_percent', fromJson: _doubleOrZero)
  double get changePercent;

  /// Create a copy of DashboardPriceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardPriceUpdateImplCopyWith<_$DashboardPriceUpdateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) {
  return _DashboardResponse.fromJson(json);
}

/// @nodoc
mixin _$DashboardResponse {
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'users')
  DashboardUsersSummary get users => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  DashboardProductsSummary get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'grades')
  DashboardGradesSummary get grades => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_updates')
  List<DashboardPriceUpdate> get priceUpdates =>
      throw _privateConstructorUsedError;

  /// Serializes this DashboardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardResponseCopyWith<DashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardResponseCopyWith<$Res> {
  factory $DashboardResponseCopyWith(
    DashboardResponse value,
    $Res Function(DashboardResponse) then,
  ) = _$DashboardResponseCopyWithImpl<$Res, DashboardResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'date') String date,
    @JsonKey(name: 'users') DashboardUsersSummary users,
    @JsonKey(name: 'products') DashboardProductsSummary products,
    @JsonKey(name: 'grades') DashboardGradesSummary grades,
    @JsonKey(name: 'total_items') int totalItems,
    @JsonKey(name: 'price_updates') List<DashboardPriceUpdate> priceUpdates,
  });

  $DashboardUsersSummaryCopyWith<$Res> get users;
  $DashboardProductsSummaryCopyWith<$Res> get products;
  $DashboardGradesSummaryCopyWith<$Res> get grades;
}

/// @nodoc
class _$DashboardResponseCopyWithImpl<$Res, $Val extends DashboardResponse>
    implements $DashboardResponseCopyWith<$Res> {
  _$DashboardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? users = null,
    Object? products = null,
    Object? grades = null,
    Object? totalItems = null,
    Object? priceUpdates = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            users: null == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                      as DashboardUsersSummary,
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as DashboardProductsSummary,
            grades: null == grades
                ? _value.grades
                : grades // ignore: cast_nullable_to_non_nullable
                      as DashboardGradesSummary,
            totalItems: null == totalItems
                ? _value.totalItems
                : totalItems // ignore: cast_nullable_to_non_nullable
                      as int,
            priceUpdates: null == priceUpdates
                ? _value.priceUpdates
                : priceUpdates // ignore: cast_nullable_to_non_nullable
                      as List<DashboardPriceUpdate>,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardUsersSummaryCopyWith<$Res> get users {
    return $DashboardUsersSummaryCopyWith<$Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardProductsSummaryCopyWith<$Res> get products {
    return $DashboardProductsSummaryCopyWith<$Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardGradesSummaryCopyWith<$Res> get grades {
    return $DashboardGradesSummaryCopyWith<$Res>(_value.grades, (value) {
      return _then(_value.copyWith(grades: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardResponseImplCopyWith<$Res>
    implements $DashboardResponseCopyWith<$Res> {
  factory _$$DashboardResponseImplCopyWith(
    _$DashboardResponseImpl value,
    $Res Function(_$DashboardResponseImpl) then,
  ) = __$$DashboardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'date') String date,
    @JsonKey(name: 'users') DashboardUsersSummary users,
    @JsonKey(name: 'products') DashboardProductsSummary products,
    @JsonKey(name: 'grades') DashboardGradesSummary grades,
    @JsonKey(name: 'total_items') int totalItems,
    @JsonKey(name: 'price_updates') List<DashboardPriceUpdate> priceUpdates,
  });

  @override
  $DashboardUsersSummaryCopyWith<$Res> get users;
  @override
  $DashboardProductsSummaryCopyWith<$Res> get products;
  @override
  $DashboardGradesSummaryCopyWith<$Res> get grades;
}

/// @nodoc
class __$$DashboardResponseImplCopyWithImpl<$Res>
    extends _$DashboardResponseCopyWithImpl<$Res, _$DashboardResponseImpl>
    implements _$$DashboardResponseImplCopyWith<$Res> {
  __$$DashboardResponseImplCopyWithImpl(
    _$DashboardResponseImpl _value,
    $Res Function(_$DashboardResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? users = null,
    Object? products = null,
    Object? grades = null,
    Object? totalItems = null,
    Object? priceUpdates = null,
  }) {
    return _then(
      _$DashboardResponseImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        users: null == users
            ? _value.users
            : users // ignore: cast_nullable_to_non_nullable
                  as DashboardUsersSummary,
        products: null == products
            ? _value.products
            : products // ignore: cast_nullable_to_non_nullable
                  as DashboardProductsSummary,
        grades: null == grades
            ? _value.grades
            : grades // ignore: cast_nullable_to_non_nullable
                  as DashboardGradesSummary,
        totalItems: null == totalItems
            ? _value.totalItems
            : totalItems // ignore: cast_nullable_to_non_nullable
                  as int,
        priceUpdates: null == priceUpdates
            ? _value._priceUpdates
            : priceUpdates // ignore: cast_nullable_to_non_nullable
                  as List<DashboardPriceUpdate>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardResponseImpl implements _DashboardResponse {
  const _$DashboardResponseImpl({
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'users') required this.users,
    @JsonKey(name: 'products') required this.products,
    @JsonKey(name: 'grades') required this.grades,
    @JsonKey(name: 'total_items') required this.totalItems,
    @JsonKey(name: 'price_updates')
    required final List<DashboardPriceUpdate> priceUpdates,
  }) : _priceUpdates = priceUpdates;

  factory _$DashboardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardResponseImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'users')
  final DashboardUsersSummary users;
  @override
  @JsonKey(name: 'products')
  final DashboardProductsSummary products;
  @override
  @JsonKey(name: 'grades')
  final DashboardGradesSummary grades;
  @override
  @JsonKey(name: 'total_items')
  final int totalItems;
  final List<DashboardPriceUpdate> _priceUpdates;
  @override
  @JsonKey(name: 'price_updates')
  List<DashboardPriceUpdate> get priceUpdates {
    if (_priceUpdates is EqualUnmodifiableListView) return _priceUpdates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_priceUpdates);
  }

  @override
  String toString() {
    return 'DashboardResponse(date: $date, users: $users, products: $products, grades: $grades, totalItems: $totalItems, priceUpdates: $priceUpdates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardResponseImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.grades, grades) || other.grades == grades) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            const DeepCollectionEquality().equals(
              other._priceUpdates,
              _priceUpdates,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    users,
    products,
    grades,
    totalItems,
    const DeepCollectionEquality().hash(_priceUpdates),
  );

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardResponseImplCopyWith<_$DashboardResponseImpl> get copyWith =>
      __$$DashboardResponseImplCopyWithImpl<_$DashboardResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardResponseImplToJson(this);
  }
}

abstract class _DashboardResponse implements DashboardResponse {
  const factory _DashboardResponse({
    @JsonKey(name: 'date') required final String date,
    @JsonKey(name: 'users') required final DashboardUsersSummary users,
    @JsonKey(name: 'products') required final DashboardProductsSummary products,
    @JsonKey(name: 'grades') required final DashboardGradesSummary grades,
    @JsonKey(name: 'total_items') required final int totalItems,
    @JsonKey(name: 'price_updates')
    required final List<DashboardPriceUpdate> priceUpdates,
  }) = _$DashboardResponseImpl;

  factory _DashboardResponse.fromJson(Map<String, dynamic> json) =
      _$DashboardResponseImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'users')
  DashboardUsersSummary get users;
  @override
  @JsonKey(name: 'products')
  DashboardProductsSummary get products;
  @override
  @JsonKey(name: 'grades')
  DashboardGradesSummary get grades;
  @override
  @JsonKey(name: 'total_items')
  int get totalItems;
  @override
  @JsonKey(name: 'price_updates')
  List<DashboardPriceUpdate> get priceUpdates;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardResponseImplCopyWith<_$DashboardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GradeModel _$GradeModelFromJson(Map<String, dynamic> json) {
  return _GradeModel.fromJson(json);
}

/// @nodoc
mixin _$GradeModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String? get productId => throw _privateConstructorUsedError;

  /// Serializes this GradeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GradeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GradeModelCopyWith<GradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeModelCopyWith<$Res> {
  factory $GradeModelCopyWith(
    GradeModel value,
    $Res Function(GradeModel) then,
  ) = _$GradeModelCopyWithImpl<$Res, GradeModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    @JsonKey(name: 'product_id') String? productId,
  });
}

/// @nodoc
class _$GradeModelCopyWithImpl<$Res, $Val extends GradeModel>
    implements $GradeModelCopyWith<$Res> {
  _$GradeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GradeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? productId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GradeModelImplCopyWith<$Res>
    implements $GradeModelCopyWith<$Res> {
  factory _$$GradeModelImplCopyWith(
    _$GradeModelImpl value,
    $Res Function(_$GradeModelImpl) then,
  ) = __$$GradeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    @JsonKey(name: 'product_id') String? productId,
  });
}

/// @nodoc
class __$$GradeModelImplCopyWithImpl<$Res>
    extends _$GradeModelCopyWithImpl<$Res, _$GradeModelImpl>
    implements _$$GradeModelImplCopyWith<$Res> {
  __$$GradeModelImplCopyWithImpl(
    _$GradeModelImpl _value,
    $Res Function(_$GradeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GradeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? productId = freezed,
  }) {
    return _then(
      _$GradeModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GradeModelImpl implements _GradeModel {
  const _$GradeModelImpl({
    required this.id,
    required this.name,
    required this.description,
    @JsonKey(name: 'product_id') this.productId,
  });

  factory _$GradeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GradeModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'product_id')
  final String? productId;

  @override
  String toString() {
    return 'GradeModel(id: $id, name: $name, description: $description, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GradeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, productId);

  /// Create a copy of GradeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GradeModelImplCopyWith<_$GradeModelImpl> get copyWith =>
      __$$GradeModelImplCopyWithImpl<_$GradeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GradeModelImplToJson(this);
  }
}

abstract class _GradeModel implements GradeModel {
  const factory _GradeModel({
    required final String id,
    required final String name,
    required final String description,
    @JsonKey(name: 'product_id') final String? productId,
  }) = _$GradeModelImpl;

  factory _GradeModel.fromJson(Map<String, dynamic> json) =
      _$GradeModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'product_id')
  String? get productId;

  /// Create a copy of GradeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GradeModelImplCopyWith<_$GradeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

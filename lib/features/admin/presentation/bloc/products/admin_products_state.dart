import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/product_entity.dart';

part 'admin_products_state.freezed.dart';

@freezed
abstract class AdminProductsState with _$AdminProductsState {
  const factory AdminProductsState.initial({
    @Default('') String search,
    String? date,
  }) = _Initial;

  const factory AdminProductsState.loading({
    @Default('') String search,
    String? date,
  }) = _Loading;

  const factory AdminProductsState.loaded({
    required List<ProductEntity> products,
    @Default('') String search,
    String? date,
  }) = _Loaded;

  const factory AdminProductsState.error({
    required String message,
    @Default('') String search,
    String? date,
  }) = _Error;
}

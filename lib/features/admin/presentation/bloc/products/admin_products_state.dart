import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/product_entity.dart';

part 'admin_products_state.freezed.dart';

@freezed
class AdminProductsState with _$AdminProductsState {
  const factory AdminProductsState.initial() = _Initial;
  const factory AdminProductsState.loading() = _Loading;
  const factory AdminProductsState.loaded(List<ProductEntity> products) =
      _Loaded;
  const factory AdminProductsState.error(String message) = _Error;
}

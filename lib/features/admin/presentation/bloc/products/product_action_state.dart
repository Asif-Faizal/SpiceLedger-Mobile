import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/product_entity.dart';

part 'product_action_state.freezed.dart';

@freezed
abstract class ProductActionState with _$ProductActionState {
  const factory ProductActionState.initial() = _Initial;
  const factory ProductActionState.loading() = _Loading;
  const factory ProductActionState.success(String message) = _Success;
  const factory ProductActionState.error(String message) = _Error;
  const factory ProductActionState.restProductsLoaded(
    List<ProductEntity> products,
  ) = _RestProductsLoaded;
}

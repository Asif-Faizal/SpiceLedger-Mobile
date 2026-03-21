import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_action_event.freezed.dart';

@freezed
class ProductActionEvent with _$ProductActionEvent {
  const factory ProductActionEvent.createOrUpdateProduct(Map<String, dynamic> input) = _CreateOrUpdateProduct;
  const factory ProductActionEvent.createOrUpdateGrade(Map<String, dynamic> input) = _CreateOrUpdateGrade;
  const factory ProductActionEvent.loadRestProducts() = _LoadRestProducts;
}

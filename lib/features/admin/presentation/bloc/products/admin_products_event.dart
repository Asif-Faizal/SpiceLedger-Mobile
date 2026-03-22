import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_products_event.freezed.dart';

@freezed
class AdminProductsEvent with _$AdminProductsEvent {
  const factory AdminProductsEvent.fetchProducts({String? date, String? search}) = _FetchProducts;
  const factory AdminProductsEvent.refresh() = _Refresh;
  const factory AdminProductsEvent.searchChanged(String query) = _SearchChanged;
  const factory AdminProductsEvent.dateChanged(String date) = _DateChanged;
}

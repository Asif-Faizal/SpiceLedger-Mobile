import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/product_usecases.dart';
import 'admin_products_event.dart';
import 'admin_products_state.dart';

@injectable
class AdminProductsBloc extends Bloc<AdminProductsEvent, AdminProductsState> {
  final GetProductsUseCase getProductsUseCase;

  String? _currentDate;
  String? _currentSearch;

  AdminProductsBloc(this.getProductsUseCase)
    : super(const AdminProductsState.initial()) {
    on<AdminProductsEvent>((event, emit) async {
      await event.map(
        fetchProducts: (e) async => _onFetchProducts(e, emit),
        refresh: (_) async => _onRefresh(emit),
      );
    });
  }

  Future<void> _onFetchProducts(
    dynamic event,
    Emitter<AdminProductsState> emit,
  ) async {
    _currentDate = event.date ?? _currentDate;
    _currentSearch = event.search ?? _currentSearch;

    emit(const AdminProductsState.loading());
    final result = await getProductsUseCase(
      date: _currentDate,
      search: _currentSearch,
    );

    result.fold(
      (failure) => emit(AdminProductsState.error(failure.message)),
      (products) => emit(AdminProductsState.loaded(products)),
    );
  }

  Future<void> _onRefresh(Emitter<AdminProductsState> emit) async {
    emit(const AdminProductsState.loading());
    final result = await getProductsUseCase(
      date: _currentDate,
      search: _currentSearch,
    );

    result.fold(
      (failure) => emit(AdminProductsState.error(failure.message)),
      (products) => emit(AdminProductsState.loaded(products)),
    );
  }
}

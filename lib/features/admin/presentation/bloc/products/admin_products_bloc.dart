import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/product_usecases.dart';
import 'admin_products_event.dart';
import 'admin_products_state.dart';

@injectable
class AdminProductsBloc extends Bloc<AdminProductsEvent, AdminProductsState> {
  final GetProductsUseCase getProductsUseCase;
  Timer? _searchTimer;

  AdminProductsBloc(this.getProductsUseCase)
    : super(const AdminProductsState.initial()) {
    on<AdminProductsEvent>((event, emit) async {
      await event.map(
        fetchProducts: (e) async => _onFetchProducts(e, emit),
        refresh: (_) async => _onRefresh(emit),
        searchChanged: (e) async => _onSearchChanged(e, emit),
        dateChanged: (e) async => _onDateChanged(e, emit),
      );
    });
  }

  Future<void> _onFetchProducts(
    dynamic event,
    Emitter<AdminProductsState> emit,
  ) async {
    final search = event.search ?? state.search;
    final date = event.date ?? state.date;

    emit(AdminProductsState.loading(search: search, date: date));
    final result = await getProductsUseCase(
      date: date,
      search: search.isEmpty ? null : search,
    );

    result.fold(
      (failure) => emit(AdminProductsState.error(message: failure.message, search: search, date: date)),
      (products) => emit(AdminProductsState.loaded(products: products, search: search, date: date)),
    );
  }

  Future<void> _onRefresh(Emitter<AdminProductsState> emit) async {
    final search = state.search;
    final date = state.date;

    emit(AdminProductsState.loading(search: search, date: date));
    final result = await getProductsUseCase(
      date: date,
      search: search.isEmpty ? null : search,
    );

    result.fold(
      (failure) => emit(AdminProductsState.error(message: failure.message, search: search, date: date)),
      (products) => emit(AdminProductsState.loaded(products: products, search: search, date: date)),
    );
  }

  void _onSearchChanged(dynamic event, Emitter<AdminProductsState> emit) {
    _searchTimer?.cancel();
    _searchTimer = Timer(const Duration(milliseconds: 750), () {
      add(AdminProductsEvent.fetchProducts(search: event.query));
    });
  }

  void _onDateChanged(dynamic event, Emitter<AdminProductsState> emit) {
    add(AdminProductsEvent.fetchProducts(date: event.date));
  }

  @override
  Future<void> close() {
    _searchTimer?.cancel();
    return super.close();
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/product_usecases.dart';
import 'product_action_event.dart';
import 'product_action_state.dart';

@injectable
class ProductActionBloc extends Bloc<ProductActionEvent, ProductActionState> {
  final CreateProductUseCase createProductUseCase;
  final CreateGradeUseCase createGradeUseCase;
  final GetProductsRestUseCase getProductsRestUseCase;

  ProductActionBloc(
    this.createProductUseCase,
    this.createGradeUseCase,
    this.getProductsRestUseCase,
  ) : super(const ProductActionState.initial()) {
    on<ProductActionEvent>((event, emit) async {
      await event.map(
        createOrUpdateProduct: (e) async => _onCreateProduct(e, emit),
        createOrUpdateGrade: (e) async => _onCreateGrade(e, emit),
        loadRestProducts: (_) async => _onLoadRestProducts(emit),
      );
    });
  }

  Future<void> _onCreateProduct(
    dynamic event,
    Emitter<ProductActionState> emit,
  ) async {
    emit(const ProductActionState.loading());
    final result = await createProductUseCase(event.input);
    result.fold(
      (failure) => emit(ProductActionState.error(failure.message)),
      (_) =>
          emit(const ProductActionState.success('Product saved successfully')),
    );
  }

  Future<void> _onCreateGrade(
    dynamic event,
    Emitter<ProductActionState> emit,
  ) async {
    emit(const ProductActionState.loading());
    final result = await createGradeUseCase(event.input);
    result.fold(
      (failure) => emit(ProductActionState.error(failure.message)),
      (_) => emit(const ProductActionState.success('Grade saved successfully')),
    );
  }

  Future<void> _onLoadRestProducts(Emitter<ProductActionState> emit) async {
    emit(const ProductActionState.loading());
    final result = await getProductsRestUseCase();
    result.fold(
      (failure) => emit(ProductActionState.error(failure.message)),
      (products) => emit(ProductActionState.restProductsLoaded(products)),
    );
  }
}

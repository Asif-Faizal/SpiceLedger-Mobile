import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/merchant_market_usecases.dart';
import '../../../domain/utils/merchant_market_utils.dart';
import 'merchant_inventory_event.dart';
import 'merchant_inventory_state.dart';

@injectable
class MerchantInventoryBloc
    extends Bloc<MerchantInventoryEvent, MerchantInventoryState> {
  final GetMerchantProductsUseCase getMerchantProductsUseCase;
  final GetMerchantPositionsUseCase getMerchantPositionsUseCase;

  MerchantInventoryBloc(
    this.getMerchantProductsUseCase,
    this.getMerchantPositionsUseCase,
  ) : super(const MerchantInventoryState.initial()) {
    on<MerchantInventoryEvent>((event, emit) async {
      await event.map(fetch: (_) async => _onFetch(emit));
    });
  }

  Future<void> _onFetch(Emitter<MerchantInventoryState> emit) async {
    emit(const MerchantInventoryState.loading());

    final productsResult = await getMerchantProductsUseCase();
    final positionsResult = await getMerchantPositionsUseCase();

    productsResult.fold(
      (failure) =>
          emit(MerchantInventoryState.error(message: failure.message)),
      (products) {
        positionsResult.fold(
          (failure) =>
              emit(MerchantInventoryState.error(message: failure.message)),
          (positions) {
            emit(
              MerchantInventoryState.loaded(
                items: buildInventoryItems(
                  products: products,
                  positions: positions,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

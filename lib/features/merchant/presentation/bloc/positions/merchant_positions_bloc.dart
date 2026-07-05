import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/merchant_market_usecases.dart';
import 'merchant_positions_event.dart';
import 'merchant_positions_state.dart';

@injectable
class MerchantPositionsBloc
    extends Bloc<MerchantPositionsEvent, MerchantPositionsState> {
  final GetMerchantPositionsUseCase getMerchantPositionsUseCase;

  MerchantPositionsBloc(this.getMerchantPositionsUseCase)
      : super(const MerchantPositionsState.initial()) {
    on<MerchantPositionsEvent>((event, emit) async {
      await event.map(
        fetchPositions: (_) async => _onFetchPositions(emit),
      );
    });
  }

  Future<void> _onFetchPositions(Emitter<MerchantPositionsState> emit) async {
    emit(const MerchantPositionsState.loading());
    final result = await getMerchantPositionsUseCase();

    result.fold(
      (failure) =>
          emit(MerchantPositionsState.error(message: failure.message)),
      (positions) =>
          emit(MerchantPositionsState.loaded(positions: positions)),
    );
  }
}

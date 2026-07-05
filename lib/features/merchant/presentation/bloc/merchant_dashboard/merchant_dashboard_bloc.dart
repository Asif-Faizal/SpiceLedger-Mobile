import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/get_merchant_dashboard_usecase.dart';
import 'merchant_dashboard_event.dart';
import 'merchant_dashboard_state.dart';

@injectable
class MerchantDashboardBloc
    extends Bloc<MerchantDashboardEvent, MerchantDashboardState> {
  final GetMerchantDashboardUseCase getMerchantDashboardUseCase;

  MerchantDashboardBloc(this.getMerchantDashboardUseCase)
      : super(const MerchantDashboardState.initial()) {
    on<MerchantDashboardEvent>((event, emit) async {
      await event.map(
        fetchDashboard: (_) async => _onFetchDashboard(emit),
      );
    });
  }

  Future<void> _onFetchDashboard(Emitter<MerchantDashboardState> emit) async {
    const days = 7;
    emit(const MerchantDashboardState.loading());
    final result = await getMerchantDashboardUseCase(days: days);

    result.fold(
      (failure) =>
          emit(MerchantDashboardState.error(message: failure.message)),
      (dashboard) => emit(
        MerchantDashboardState.loaded(dashboard: dashboard, days: days),
      ),
    );
  }
}

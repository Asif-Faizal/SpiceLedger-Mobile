import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/get_merchant_dashboard_usecase.dart';
import '../../../domain/usecases/merchant_market_usecases.dart';
import 'merchant_dashboard_event.dart';
import 'merchant_dashboard_state.dart';

@injectable
class MerchantDashboardBloc
    extends Bloc<MerchantDashboardEvent, MerchantDashboardState> {
  final GetMerchantDashboardUseCase getMerchantDashboardUseCase;
  final ListMerchantTransactionsUseCase listMerchantTransactionsUseCase;

  MerchantDashboardBloc(
    this.getMerchantDashboardUseCase,
    this.listMerchantTransactionsUseCase,
  ) : super(const MerchantDashboardState.initial()) {
    on<MerchantDashboardEvent>((event, emit) async {
      await event.map(
        fetchDashboard: (_) async => _onFetchDashboard(emit),
      );
    });
  }

  Future<void> _onFetchDashboard(Emitter<MerchantDashboardState> emit) async {
    const days = 7;
    emit(const MerchantDashboardState.loading());

    final dashboardResult = await getMerchantDashboardUseCase(days: days);
    final transactionsResult = await listMerchantTransactionsUseCase(
      skip: 0,
      take: 5,
    );

    dashboardResult.fold(
      (failure) =>
          emit(MerchantDashboardState.error(message: failure.message)),
      (dashboard) {
        transactionsResult.fold(
          (failure) => emit(
            MerchantDashboardState.loaded(
              dashboard: dashboard,
              recentTransactions: dashboard.recentTransactions,
              days: days,
            ),
          ),
          (recentTransactions) => emit(
            MerchantDashboardState.loaded(
              dashboard: dashboard,
              recentTransactions: recentTransactions,
              days: days,
            ),
          ),
        );
      },
    );
  }
}

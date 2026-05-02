import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/product_usecases.dart';
import 'admin_dashboard_event.dart';
import 'admin_dashboard_state.dart';

@injectable
class AdminDashboardBloc extends Bloc<AdminDashboardEvent, AdminDashboardState> {
  final GetAdminDashboardUseCase getAdminDashboardUseCase;

  AdminDashboardBloc(this.getAdminDashboardUseCase)
      : super(const AdminDashboardState.initial()) {
    on<AdminDashboardEvent>((event, emit) async {
      await event.map(
        fetchDashboard: (_) async => _onFetchDashboard(emit),
      );
    });
  }

  Future<void> _onFetchDashboard(Emitter<AdminDashboardState> emit) async {
    emit(const AdminDashboardState.loading());
    final result = await getAdminDashboardUseCase();

    result.fold(
      (failure) => emit(AdminDashboardState.error(message: failure.message)),
      (dashboard) => emit(AdminDashboardState.loaded(dashboard: dashboard)),
    );
  }
}

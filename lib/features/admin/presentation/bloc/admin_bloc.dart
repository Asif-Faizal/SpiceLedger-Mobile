import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/user_stats.dart';
import '../../domain/usecases/create_grade_usecase.dart';
import '../../domain/usecases/get_user_stats_usecase.dart';
import '../../domain/usecases/set_daily_price_usecase.dart';

part 'admin_event.dart';
part 'admin_state.dart';
part 'admin_bloc.freezed.dart';

@injectable
class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final GetUserStatsUseCase getUserStatsUseCase;
  final CreateGradeUseCase createGradeUseCase;
  final SetDailyPriceUseCase setDailyPriceUseCase;

  AdminBloc(
    this.getUserStatsUseCase,
    this.createGradeUseCase,
    this.setDailyPriceUseCase,
  ) : super(const AdminState.initial()) {
    on<_LoadStats>(_onLoadStats);
    on<_CreateGrade>(_onCreateGrade);
    on<_SetPrice>(_onSetPrice);
  }

  Future<void> _onLoadStats(_LoadStats event, Emitter<AdminState> emit) async {
    emit(const AdminState.loading());
    final result = await getUserStatsUseCase();
    result.fold(
      (failure) => emit(AdminState.failure(failure.message)),
      (stats) => emit(AdminState.loaded(stats)),
    );
  }

  Future<void> _onCreateGrade(
    _CreateGrade event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());
    final result = await createGradeUseCase(event.name, event.description);
    result.fold(
      (failure) => emit(AdminState.failure(failure.message)),
      (_) => emit(const AdminState.success('Grade Created')),
    );
  }

  Future<void> _onSetPrice(_SetPrice event, Emitter<AdminState> emit) async {
    emit(const AdminState.loading());
    final result = await setDailyPriceUseCase(
      event.date,
      event.grade,
      event.price,
    );
    result.fold(
      (failure) => emit(AdminState.failure(failure.message)),
      (_) => emit(const AdminState.success('Price Set')),
    );
  }
}

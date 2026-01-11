import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/user_stats.dart';
import '../../domain/usecases/create_grade_usecase.dart';
import '../../domain/usecases/get_user_stats_usecase.dart';
import '../../domain/usecases/set_daily_price_usecase.dart';
import '../../domain/entities/product.dart';
import '../../domain/usecases/get_products_usecase.dart';
import '../../domain/usecases/get_daily_prices_usecase.dart';
import '../../../inventory/domain/usecases/get_grades_usecase.dart';
import '../../../inventory/domain/entities/grade.dart';
import '../../data/models/daily_price_model.dart';
import '../../domain/usecases/create_product_usecase.dart';
import '../../data/models/dashboard_model.dart';
import '../../domain/usecases/get_dashboard_usecase.dart';

part 'admin_event.dart';
part 'admin_state.dart';
part 'admin_bloc.freezed.dart';

@injectable
class AdminBloc extends Bloc<AdminEvent, AdminState> {
  final GetUserStatsUseCase getUserStatsUseCase;
  final CreateGradeUseCase createGradeUseCase;
  final SetDailyPriceUseCase setDailyPriceUseCase;
  final GetProductsUseCase getProductsUseCase;
  final GetDailyPricesUseCase getDailyPricesUseCase;
  final GetGradesUseCase getGradesUseCase;
  final CreateProductUseCase createProductUseCase;
  final GetDashboardUseCase getDashboardUseCase;

  AdminBloc(
    this.getUserStatsUseCase,
    this.createGradeUseCase,
    this.setDailyPriceUseCase,
    this.getProductsUseCase,
    this.getDailyPricesUseCase,
    this.getGradesUseCase,
    this.createProductUseCase,
    this.getDashboardUseCase,
  ) : super(const AdminState.initial()) {
    on<_LoadStats>(_onLoadStats);
    on<_CreateGrade>(_onCreateGrade);
    on<_SetPrice>(_onSetPrice);
    on<_LoadCatalog>(_onLoadCatalog);
    on<_CreateProduct>(_onCreateProduct);
    on<_LoadDashboard>(_onLoadDashboard);
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
    final result = await createGradeUseCase(
      event.productId,
      event.name,
      event.description,
    );
    result.fold(
      (failure) => emit(AdminState.failure(failure.message)),
      (_) => emit(const AdminState.success('Grade Created')),
    );
  }

  Future<void> _onSetPrice(_SetPrice event, Emitter<AdminState> emit) async {
    emit(const AdminState.loading());
    final result = await setDailyPriceUseCase(
      event.date,
      event.productId,
      event.gradeId,
      event.price,
    );
    result.fold(
      (failure) => emit(AdminState.failure(failure.message)),
      (_) => emit(const AdminState.success('Price Set')),
    );
  }

  Future<void> _onCreateProduct(
    _CreateProduct event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());
    final result = await createProductUseCase(
      event.name,
      event.description,
    );
    result.fold(
      (failure) => emit(AdminState.failure(failure.message)),
      (_) => emit(const AdminState.success('Product Created')),
    );
  }

  Future<void> _onLoadCatalog(
    _LoadCatalog event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());
    final today = DateTime.now().toIso8601String().split('T')[0];
    final productsResult = await getProductsUseCase();
    final gradesResult = await getGradesUseCase();
    final pricesResult = await getDailyPricesUseCase(today);

    final grades = await gradesResult.fold(
      (failure) async {
        return <Grade>[];
      },
      (data) async => data,
    );

    final products = await productsResult.fold(
      (failure) async {
        return <Product>[];
      },
      (data) async => data,
    );

    final prices = await pricesResult.fold(
      (failure) async {
        return DailyPricesResponse(date: today, prices: const []);
      },
      (data) async => DailyPricesResponse(date: data.date, prices: data.prices ?? const []),
    );

    emit(AdminState.catalog(products, grades, prices));
  }

  Future<void> _onLoadDashboard(
    _LoadDashboard event,
    Emitter<AdminState> emit,
  ) async {
    emit(const AdminState.loading());
    final result = await getDashboardUseCase(date: event.date);
    result.fold(
      (failure) => emit(AdminState.failure(failure.message)),
      (data) => emit(AdminState.dashboard(data)),
    );
  }
}

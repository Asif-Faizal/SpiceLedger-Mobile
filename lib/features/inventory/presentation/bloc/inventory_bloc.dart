import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/grade.dart';
import '../../domain/entities/inventory.dart';
import '../../domain/usecases/add_purchase_lot_usecase.dart';
import '../../domain/usecases/add_sale_usecase.dart';
import '../../domain/usecases/get_current_inventory_usecase.dart';
import '../../domain/usecases/get_grades_usecase.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';
part 'inventory_bloc.freezed.dart';

@injectable
class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  final GetGradesUseCase getGradesUseCase;
  final AddPurchaseLotUseCase addPurchaseLotUseCase;
  final AddSaleUseCase addSaleUseCase;
  final GetCurrentInventoryUseCase getCurrentInventoryUseCase;

  InventoryBloc(
    this.getGradesUseCase,
    this.addPurchaseLotUseCase,
    this.addSaleUseCase,
    this.getCurrentInventoryUseCase,
  ) : super(const InventoryState.initial()) {
    on<_LoadData>(_onLoadData);
    on<_AddLot>(_onAddLot);
    on<_AddSale>(_onAddSale);
  }

  Future<void> _onLoadData(
    _LoadData event,
    Emitter<InventoryState> emit,
  ) async {
    emit(const InventoryState.loading());
    final inventoryResult = await getCurrentInventoryUseCase();
    final gradesResult = await getGradesUseCase();

    inventoryResult.fold(
      (failure) => emit(InventoryState.failure(failure.message)),
      (inventory) {
        gradesResult.fold(
          (failure) => emit(InventoryState.failure(failure.message)),
          (grades) => emit(InventoryState.loaded(inventory, grades)),
        );
      },
    );
  }

  Future<void> _onAddLot(_AddLot event, Emitter<InventoryState> emit) async {
    emit(const InventoryState.loading());
    final result = await addPurchaseLotUseCase(
      event.date,
      event.gradeId,
      event.quantity,
      event.unitCost,
    );
    result.fold(
      (failure) => emit(InventoryState.failure(failure.message)),
      (_) => emit(const InventoryState.success("Purchase Lot Added")),
    );
  }

  Future<void> _onAddSale(_AddSale event, Emitter<InventoryState> emit) async {
    emit(const InventoryState.loading());
    final result = await addSaleUseCase(
      event.date,
      event.gradeId,
      event.quantity,
      event.unitPrice,
    );
    result.fold(
      (failure) => emit(InventoryState.failure(failure.message)),
      (_) => emit(const InventoryState.success("Sale Transaction Added")),
    );
  }
}

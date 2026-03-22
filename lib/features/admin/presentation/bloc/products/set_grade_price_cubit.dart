import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import '../../../domain/entities/product_entity.dart';
import '../../../domain/usecases/product_usecases.dart';

part 'set_grade_price_cubit.freezed.dart';

@freezed
abstract class SetGradePriceState with _$SetGradePriceState {
  const factory SetGradePriceState({
    required DateTime date,
    required String productId,
    required List<GradeEntity> grades,
    @Default({}) Map<String, double> gradePrices,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(false) bool isSuccess,
  }) = _SetGradePriceState;
}

@injectable
class SetGradePriceCubit extends Cubit<SetGradePriceState> {
  final CreateDailyPriceUseCase createDailyPriceUseCase;

  SetGradePriceCubit(
    this.createDailyPriceUseCase, {
    @factoryParam required ProductEntity product,
  }) : super(
         SetGradePriceState(
           date: DateTime.now(),
           productId: product.id,
           grades: product.grades,
           gradePrices: {
             for (var g in product.grades)
               if (g.price != null) g.id: g.price!,
           },
         ),
       );

  void dateChanged(DateTime date) {
    emit(state.copyWith(date: date, isSuccess: false, errorMessage: null));
  }

  void priceChanged(String gradeId, double price) {
    final newPrices = Map<String, double>.from(state.gradePrices);
    newPrices[gradeId] = price;
    emit(
      state.copyWith(
        gradePrices: newPrices,
        isSuccess: false,
        errorMessage: null,
      ),
    );
  }

  Future<void> savePrices() async {
    emit(state.copyWith(isLoading: true, errorMessage: null, isSuccess: false));

    try {
      final dateStr = DateFormat('yyyy-MM-dd').format(state.date);
      const timeStr = '10:00:00';

      for (var entry in state.gradePrices.entries) {
        final gradeId = entry.key;
        final price = entry.value;

        final result = await createDailyPriceUseCase({
          'id': '', // Let backend generate or handle
          'productId': state.productId,
          'gradeId': gradeId,
          'price': price,
          'date': dateStr,
          'time': timeStr,
        });

        final failureOrSuccess = result.fold((f) => f, (_) => null);
        if (failureOrSuccess != null) {
          emit(
            state.copyWith(
              isLoading: false,
              errorMessage: failureOrSuccess.message,
            ),
          );
          return;
        }
      }

      emit(state.copyWith(isLoading: false, isSuccess: true));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}

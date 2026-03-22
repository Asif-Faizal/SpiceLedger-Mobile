import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_form_cubit.freezed.dart';

@freezed
abstract class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    @Default('') String name,
    @Default('') String category,
    @Default('') String description,
    @Default('active') String status,
  }) = _ProductFormState;
}

class ProductFormCubit extends Cubit<ProductFormState> {
  ProductFormCubit({
    String? name,
    String? category,
    String? description,
    String? status,
  }) : super(
         ProductFormState(
           name: name ?? '',
           category: category ?? '',
           description: description ?? '',
           status: status ?? 'active',
         ),
       );

  void nameChanged(String value) => emit(state.copyWith(name: value));
  void categoryChanged(String value) => emit(state.copyWith(category: value));
  void descriptionChanged(String value) =>
      emit(state.copyWith(description: value));
  void statusChanged(String value) => emit(state.copyWith(status: value));
}

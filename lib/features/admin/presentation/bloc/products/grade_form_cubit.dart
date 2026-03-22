import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grade_form_cubit.freezed.dart';

@freezed
abstract class GradeFormState with _$GradeFormState {
  const factory GradeFormState({
    @Default('') String name,
    @Default('') String description,
    @Default('active') String status,
    String? selectedProductId,
  }) = _GradeFormState;
}

class GradeFormCubit extends Cubit<GradeFormState> {
  GradeFormCubit({
    String? name,
    String? description,
    String? status,
    String? selectedProductId,
  }) : super(
         GradeFormState(
           name: name ?? '',
           description: description ?? '',
           status: status ?? 'active',
           selectedProductId: selectedProductId,
         ),
       );

  void nameChanged(String value) => emit(state.copyWith(name: value));
  void descriptionChanged(String value) =>
      emit(state.copyWith(description: value));
  void statusChanged(String value) => emit(state.copyWith(status: value));
  void productChanged(String value) =>
      emit(state.copyWith(selectedProductId: value));
}

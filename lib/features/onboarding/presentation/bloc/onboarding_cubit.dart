import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);
  void setIndex(int i) => emit(i);
  void next() => emit(state + 1);
  void prev() => emit(state - 1);
}

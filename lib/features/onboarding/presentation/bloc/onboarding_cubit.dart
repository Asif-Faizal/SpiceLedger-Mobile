import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  final PageController controller = PageController();
  OnboardingCubit() : super(0);
  void setIndex(int i) => emit(i);
  void next() => emit(state + 1);
  void prev() => emit(state - 1);
  void navigateTo(int i) => controller.animateToPage(
        i,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
  @override
  Future<void> close() async {
    controller.dispose();
    await super.close();
  }
}

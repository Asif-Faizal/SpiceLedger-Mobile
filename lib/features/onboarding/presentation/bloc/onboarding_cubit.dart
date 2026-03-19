import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';

@injectable
class OnboardingCubit extends Cubit<int> {
  final Box _cacheBox;
  final PageController controller = PageController();

  OnboardingCubit(this._cacheBox) : super(0);

  void setIndex(int i) => emit(i);
  void next() => emit(state + 1);
  void prev() => emit(state - 1);
  void navigateTo(int i) => controller.animateToPage(
    i,
    duration: const Duration(milliseconds: 300),
    curve: Curves.easeOut,
  );

  Future<void> completeOnboarding() async {
    await _cacheBox.put('has_seen_onboarding', true);
  }

  @override
  Future<void> close() async {
    controller.dispose();
    await super.close();
  }
}

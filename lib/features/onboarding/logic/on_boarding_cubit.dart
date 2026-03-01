import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/features/onboarding/logic/on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(const OnBoardingState());

  final PageController pageController = PageController();
  static const int totalPages = 3;

  void onPageChanged(int index) {
    emit(state.copyWith(currentPage: index));
  }

  void nextPage() {
    if (state.currentPage < totalPages - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  bool get isLastPage => state.currentPage == totalPages - 1;

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}

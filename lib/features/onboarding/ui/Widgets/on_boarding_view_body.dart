import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_button.dart';
import '../../logic/on_boarding_cubit.dart';
import '../../logic/on_boarding_state.dart';
import '../../model/on_boarding_model.dart';
import 'dots_indicator.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnBoardingCubit>();
    final pages = OnBoardingModel.onboardingPages;

    return Stack(
      children: [
        PageView.builder(
          controller: cubit.pageController,
          itemCount: pages.length,
          onPageChanged: cubit.onPageChanged,
          itemBuilder: (context, index) {
            return Image.asset(
              pages[index].image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            );
          },
        ),
        BlocBuilder<OnBoardingCubit, OnBoardingState>(
          builder: (context, state) {
            return Positioned(
              left: 0,
              right: 0,
              bottom: context.responsiveHeight(48),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DotsIndicator(
                    count: pages.length,
                    current: state.currentPage,
                  ),
                  verticalSpace(context, height: 20),
                  AppButton(
                    title: pages[state.currentPage].buttonText,
                    onPressed: () => _handleButtonPressed(context, cubit),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  void _handleButtonPressed(BuildContext context, OnBoardingCubit cubit) {
    if (cubit.isLastPage) {
      context.pushNamedAndRemoveUntil(
        Routes.loginScreen,
        predicate: (_) => false,
      );
    } else {
      cubit.nextPage();
    }
  }
}

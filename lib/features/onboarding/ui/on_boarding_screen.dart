import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/on_boarding_cubit.dart';
import 'widgets/on_boarding_view_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnBoardingCubit(),
      child: const Scaffold(body: OnBoardingViewBody()),
    );
  }
}

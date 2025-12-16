
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/features/login/logic/login_state.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/modern_dialog_helper.dart';
import '../../logic/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            // Show loading dialog
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: AppColors.primaryGreen),
              ),
            );
          },
          success: (loginResponse) {
            // Close loading dialog
            Navigator.of(context).pop();

            // Show success dialog
            ModernDialog.showSuccess(
              context: context,
              title: 'Welcome Back!',
              message: 'You have successfully logged in.',
              buttonText: 'Continue',
              onPressed: () {
                context.pushNamed(Routes.homeScreen);
              },
            );
          },
          failure: (message) {
            // Close loading dialog if it's open
            Navigator.of(context).pop();

            // Show error dialog
            ModernDialog.showError(
              context: context,
              title: 'Login Failed',
              message: message ?? 'Something went wrong. Please try again.',
              buttonText: 'Retry',
              onPressed: () {
                // Optionally trigger retry logic
              },
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

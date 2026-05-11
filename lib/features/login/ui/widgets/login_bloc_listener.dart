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
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: AppColors.primaryGreen),
              ),
            );
          },
          success: (loginResponse) {
            context.pop(); // Close the loading dialog

            ModernDialog.showSuccess(
              context: context,
              title: 'أهلاً بعودتك',
              message: 'تم تسجيل الدخول بنجاح.',
              buttonText: 'استمرار',
              onPressed: () {
                context.pushNamedAndRemoveUntil(Routes.mainScreen, predicate: (route) => false);
              },
            );
          },
          failure: (message) {
            context.pop(); // Close the loading dialog

            ModernDialog.showError(
              context: context,
              title: 'فشل تسجيل الدخول',
              message: message,
              buttonText: 'إعادة المحاولة',
              onPressed: () {
                //context.pop();
              },
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/features/signup/logic/signup_cubit.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/modern_dialog_helper.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: AppColors.primaryGreen),
              ),
            );
          },
          success: (signupResponse) {
            Navigator.of(context).pop();

            ModernDialog.showSuccess(
              context: context,
              title: 'تم إنشاء الحساب',
              message: 'تم التسجيل بنجاح. سيتم إرسال رمز التحقق إلى هاتفك.',
              buttonText: 'التالي',
              onPressed: () {
                context.pushNamed(
                  Routes.otpScreen,
                  arguments: signupResponse.data.user.id,
                );
              },
            );
          },
          error: (errorHandler) {
            Navigator.of(context).pop();

            ModernDialog.showError(
              context: context,
              title: 'فشل التسجيل',
              message: errorHandler.apiErrorModel.message,
              buttonText: 'إعادة المحاولة',
              onPressed: () {},
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

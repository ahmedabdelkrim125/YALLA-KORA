import 'package:flutter/material.dart';
import 'package:yalla_kora/features/signup/ui/widgets/have_account_row.dart';
import 'package:yalla_kora/features/signup/ui/widgets/signup_form.dart';
import 'package:yalla_kora/features/signup/ui/widgets/signup_header.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/helper/spacing.dart';
import 'widgets/signup_bloc_listener.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpace(context, height: 40),
            const SignupHeader(),
            verticalSpace(context, height: 5),
            const SignupForm(),
            verticalSpace(context, height: 19),
            const HaveAccountRow(),
            verticalSpace(context, height: 52),
            const SignupBlocListener(),
          ],
        ),
      ),
    );
  }
}

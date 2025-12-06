import 'package:appointment_app/core/constants/app_colors.dart';
import 'package:appointment_app/core/helper/spacing.dart';
import 'package:appointment_app/features/signup/ui/widgets/have_account_row.dart';
import 'package:appointment_app/features/signup/ui/widgets/signup_form.dart';
import 'package:appointment_app/features/signup/ui/widgets/signup_header.dart';
import 'package:flutter/material.dart';

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
            SignupHeader(),
            verticalSpace(context, height: 5),
            SignupForm(),
            verticalSpace(context, height: 19),
            HaveAccountRow(),
            verticalSpace(context, height: 52),
          ],
        ),
      ),
    );
  }
}

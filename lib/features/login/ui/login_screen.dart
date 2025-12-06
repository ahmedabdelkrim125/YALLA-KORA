import 'package:appointment_app/core/constants/app_colors.dart';
import 'package:appointment_app/core/helper/responsive_extensions.dart';
import 'package:appointment_app/core/helper/spacing.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:appointment_app/features/login/ui/widgets/login_form.dart';
import 'package:appointment_app/features/login/ui/widgets/login_header.dart';
import 'package:appointment_app/features/login/ui/widgets/not_have_account_row.dart';
import 'package:appointment_app/features/login/ui/widgets/social_login_auth_row.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpace(context, height: 40),
            const LoginHeader(),
            verticalSpace(context, height: 30),
            const LoginForm(),
            _buildSocialLoginSection(context),
            verticalSpace(context, height: 36),
            const NotHaveAccountRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialLoginSection(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 14.h(context),
              horizontal: 26.w(context),
            ),
            child: Text('أو سجل بإستخدام', style: TextStyles.mediumWhite12),
          ),
        ),
        const SocialLoginAuthRow(),
      ],
    );
  }
}

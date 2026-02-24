import 'package:flutter/material.dart';
import 'package:yalla_kora/features/login/ui/widgets/login_form.dart';
import 'package:yalla_kora/features/login/ui/widgets/login_header.dart';
import 'package:yalla_kora/features/login/ui/widgets/not_have_account_row.dart';
import 'package:yalla_kora/features/login/ui/widgets/social_login_auth_row.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/helper/responsive_extensions.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theme/text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(context, height: 40),
            const LoginHeader(),
            verticalSpace(context, height: 24),
            _buildWelcomeText(context),
            verticalSpace(context, height: 16),
            const LoginForm(),
            _buildSocialLoginSection(context),
            verticalSpace(context, height: 36),
            const NotHaveAccountRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeText(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w(context)),
        child: Text('مرحباً بعودتك', style: TextStyles.boldWhite16),
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

import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/text_styles.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 33.h(context), bottom: 8.h(context)),
          child: Image.asset(Assets.logo),
        ),
        Text('تسجيل الدخول', style: TextStyles.boldWhite20),
      ],
    );
  }
}

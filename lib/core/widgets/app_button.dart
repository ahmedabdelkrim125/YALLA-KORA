import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../helper/responsive_extensions.dart';
import '../theme/text_styles.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const AppButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w(context),
      height: 45.h(context),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r(context)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyles.boldDarkBackground16,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

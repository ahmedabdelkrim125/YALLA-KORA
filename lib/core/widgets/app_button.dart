import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../helper/responsive_extensions.dart';
import '../theme/text_styles.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final List<BoxShadow>? boxShadow;
  final double? borderRadius;

  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.width,
    this.height,
    this.textStyle,
    this.boxShadow,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 327.w(context),
      height: height ?? 50.h(context),
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(
          borderRadius?.r(context) ?? 12.r(context),
        ),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryGreen,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius?.r(context) ?? 12.r(context),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: textStyle ?? TextStyles.boldDarkBackground18,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

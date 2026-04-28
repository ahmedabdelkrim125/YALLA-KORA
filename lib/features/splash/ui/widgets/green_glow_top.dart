import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';

class GreenGlowTop extends StatelessWidget {
  const GreenGlowTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -80.h(context),
      left: -60.w(context),
      child: Container(
        width: 250.w(context),
        height: 250.h(context),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryGreen.withOpacity(0.08),
        ),
      ),
    );
  }
}
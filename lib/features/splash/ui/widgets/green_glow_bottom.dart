import 'package:flutter/material.dart';

import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';

class GreenGlowBottom extends StatelessWidget {
  const GreenGlowBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -60.h(context),
      right: -40.w(context),
      child: Container(
        width: 200.w(context),
        height: 200.h(context),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryGreen.withOpacity(0.06),
        ),
      ),
    );
  }
}
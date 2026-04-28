import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/text_styles.dart';

class CenterContent extends StatelessWidget {
  const CenterContent({
    super.key,
    required Animation<double> fadeAnim,
    required Animation<double> scaleAnim,
  }) : _fadeAnim = fadeAnim, _scaleAnim = scaleAnim;

  final Animation<double> _fadeAnim;
  final Animation<double> _scaleAnim;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _fadeAnim,
        child: ScaleTransition(
          scale: _scaleAnim,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Logo
              SvgPicture.asset(
                Assets.logosvg,
                width: 120.w(context),
                height: 120.h(context),
              ),

              SizedBox(height: 20.h(context)),

              // App name
              Text(
                'يلا كورة',
                style: TextStyles.boldWhite28,
              ),

              SizedBox(height: 8.h(context)),

              // Tagline
              Text(
                'احجز ملعبك في ثوانٍ',
                style: TextStyles.regularMuted14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

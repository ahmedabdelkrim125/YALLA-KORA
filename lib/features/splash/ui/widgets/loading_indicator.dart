import 'package:flutter/material.dart';

import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
    required Animation<double> fadeAnim,
  }) : _fadeAnim = fadeAnim;

  final Animation<double> _fadeAnim;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 60.h(context),
      left: 0,
      right: 0,
      child: FadeTransition(
        opacity: _fadeAnim,
        child: Column(
          children: [
            SizedBox(
              width: 24.w(context),
              height: 24.h(context),
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.primaryGreen,
              ),
            ),
            SizedBox(height: 12.h(context)),
            Text(
              'جاري التحميل...',
              style: TextStyles.regularGrey12,
            ),
          ],
        ),
      ),
    );
  }
}

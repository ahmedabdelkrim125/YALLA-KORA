import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import '../theme/app_colors.dart';

class CustomErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const CustomErrorWidget({super.key, required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 20, vertical: 16),
      child: Center(
        child: Column(
          children: [
            Text(message, style: TextStyles.regularGrey12),
            verticalSpace(context, height: 8),
            TextButton(
              onPressed: onRetry,
              child: Text(
                'إعادة المحاولة',
                style: TextStyles.mediumWhite14.copyWith(
                  color: AppColors.primaryGreen,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
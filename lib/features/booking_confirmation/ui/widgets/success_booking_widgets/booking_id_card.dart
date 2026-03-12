import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yalla_kora/core/helper/helper_functions/build_snack_bar.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class BookingIdCard extends StatelessWidget {
  final String bookingId;

  const BookingIdCard({super.key, required this.bookingId});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: bookingId));
        buildSnackBar(
          context: context,
          text: 'تم نسخ رقم الحجز',
          color: AppColors.card2,
          durationInSec: 2,
        );
      },
      child: Container(
        width: double.infinity,
        padding: context.responsivePadding(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primaryGreen.withOpacity(0.1),
              AppColors.primaryGreen.withOpacity(0.00),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0, 0.7],
          ),
          borderRadius: BorderRadius.circular(16.r(context)),
          border: Border.all(color: AppColors.primaryGreen, width: 0.8),
        ),
        child: Column(
          children: [
            Text(
              'رقم الحجز',
              style: TextStyles.regularWhite12.copyWith(color: AppColors.muted),
            ),
            verticalSpace(context, height: 6),
            Text(
              bookingId,
              style: TextStyles.extraBoldWhite24.copyWith(
                color: AppColors.primaryGreen,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

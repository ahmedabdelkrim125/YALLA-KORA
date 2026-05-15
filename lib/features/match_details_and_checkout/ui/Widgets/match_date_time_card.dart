import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

import '../../../../core/helper/spacing.dart';

class MatchDateTimeCard extends StatelessWidget {
  const MatchDateTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 335.w(context),
        padding: context.responsivePadding(
          top: 16,
          left: 16,
          right: 16,
          bottom: 24,
        ),
        decoration: BoxDecoration(
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(12.r(context)),
          border: Border.all(width: 1.w(context), color: AppColors.slateGray50),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'التوقيت و التاريخ',
              style: TextStyles.boldWhite18.copyWith(height: 1.50),
            ),
            verticalSpace(context, height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      color: AppColors.lightGreenIcon,
                      size: 24.r(context),
                    ),
                    horizontalSpace(context, width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الجمعة',
                          style: TextStyles.boldWhite15.copyWith(height: 1.80),
                        ),
                        Text(
                          '15 مارس 2026',
                          style: TextStyles.mediumMuted14.copyWith(
                            height: 1.93,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.schedule,
                      color: AppColors.primaryYellow,
                      size: 24.r(context),
                    ),
                    horizontalSpace(context, width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '8:00 مساءً',
                          style: TextStyles.boldWhite15.copyWith(height: 1.80),
                        ),
                        Text(
                          '60 دقيقة',
                          style: TextStyles.mediumMuted14.copyWith(
                            height: 1.93,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/utils/date_time_formatter.dart';

class MatchDateTimeCard extends StatelessWidget {
  const MatchDateTimeCard({super.key, required this.time, required this.date});

  final String time;
  final String date;
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
              style: TextStyles.boldWhite18,
            ),
            verticalSpace(context, height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.calendar_month_sharp,
                      color: AppColors.lightGreenIcon,
                      size: 24.r(context),
                    ),
                    horizontalSpace(context, width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateTimeFormatter.dayFromDate(date),
                          style: TextStyles.boldWhite15,
                        ),
                        Text(
                          DateTimeFormatter.dateToArabic(date),
                          style: TextStyles.mediumMuted14,
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
                          DateTimeFormatter.timeToArabic12Hour(time),
                          style: TextStyles.boldWhite15,
                        ),
                        Text(
                          '60 دقيقة',
                          style: TextStyles.mediumMuted14.copyWith(
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

// ── Day cell ──────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/facility-details/data/model/day_model.dart';

class DayCell extends StatelessWidget {
  final DayModel day;
  const DayCell({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w(context),
      height: 75.h(context),
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(20.r(context)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(day.dayName, style: TextStyles.mediumWhite12),
          verticalSpace(context, height: 4),
          Container(
            padding: context.responsivePadding(horizontal: 4, vertical: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r(context)),
              color: AppColors.cardBg2,
            ),
            child: Text(
              day.dayNumber,
              style: TextStyles.semiBoldWhite18,
            ),
          ),
        ],
      ),
    );
  }
}

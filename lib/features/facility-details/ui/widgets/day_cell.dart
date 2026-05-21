// ── Day cell ──────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/facility-details/data/model/day_model.dart';
import 'package:yalla_kora/features/facility-details/logic/calendar_cubit/calendar_cubit.dart';

class DayCell extends StatelessWidget {
  final DayModel day;
  const DayCell({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    final isSelected = day.isSelected;

    return GestureDetector(
      onTap: () => context.read<CalendarCubit>().selectDay(day),
      child: Container(
        width: 55.h(context),
        height: 75.w(context),
        decoration: BoxDecoration(
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(20.r(context)),
          border: Border.all(
            width: 2,
            color: isSelected ? AppColors.primaryGreen : AppColors.card2
          )
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
      ),
    );
  }
}

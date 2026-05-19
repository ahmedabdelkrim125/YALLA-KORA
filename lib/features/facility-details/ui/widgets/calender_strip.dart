// ══════════════════════════════════════════════════════
//  CALENDAR STRIP
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/facility-details/data/model/day_model.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/day_cell.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/month_header.dart';

class CalendarStrip extends StatelessWidget {
  final String month;
  final List<DayModel> days;
  const CalendarStrip({super.key, required this.month, required this.days});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Month header + arrows
          CalendarMonthHeader(month: month),
          verticalSpace(context, height: 8),
          // Day cells
          SizedBox(
            height: 75.h(context),
            child: ListView.separated(
              separatorBuilder: (context, index) => horizontalSpace(context, width: 8),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: days.length,
              itemBuilder: (context, index) => DayCell(day: days[index]),
            ),
          )
        ],
      ),
    );
  }
}

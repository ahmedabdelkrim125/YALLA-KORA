// ══════════════════════════════════════════════════════
//  CALENDAR STRIP
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/facility-details/ui/facility_details.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/day_cell.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/month_header.dart';

class CalendarStrip extends StatelessWidget {
  final String month;
  final List<DayModel> days;
  const CalendarStrip({super.key, required this.month, required this.days});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Month header + arrows
          CalendarMonthHeader(month: month),
          verticalSpace(context, height: 8),
          // Day cells
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: days.map((d) => DayCell(day: d)).toList(),
          ),
        ],
      ),
    );
  }
}

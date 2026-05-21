// ══════════════════════════════════════════════════════
//  CALENDAR STRIP
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/facility-details/logic/calendar_cubit/calendar_cubit.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/day_cell.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/month_header.dart';

class CalendarStrip extends StatelessWidget {

  const CalendarStrip({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      builder: (context, state) {
        final calCubit = context.read<CalendarCubit>();
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Month header + arrows
              CalendarMonthHeader(
                month: calCubit.monthYearLabel,
                canGoPrevious: calCubit.canGoPrevious,
                onNext: () => calCubit.nextMonth(),
                onPrevious: () => calCubit.previousMonth(),
              ),
              verticalSpace(context, height: 8),
              // Day cells
              SizedBox(
                height: 75.h(context),
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      horizontalSpace(context, width: 8),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.days.length,
                  itemBuilder: (context, index) => DayCell(day: state.days[index]),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

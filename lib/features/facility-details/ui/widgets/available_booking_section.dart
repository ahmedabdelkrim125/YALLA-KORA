import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:yalla_kora/core/helper/helper_functions/calendar_helper.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/facility-details/data/model/day_model.dart';
import 'package:yalla_kora/features/facility-details/logic/available_time_cubit.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/available_time_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/booking_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/calender_strip.dart';

import '../../../../core/widgets/error_widget.dart';

class AvailableBookings extends StatelessWidget {
  const AvailableBookings({super.key, required this.days});

  final List<DayModel> days;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // ── Month header + calendar ──
          verticalSpace(context, height: 20),
          CalendarStrip(
            month: CalendarHelper.getMonthYear(DateTime.now()),
            days: days,
          ),

          // ── Available times ──
          verticalSpace(context, height: 20),
          BlocBuilder<AvailableTimeCubit, AvailableTimeState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator()),
                success:  (data) => AvailableTimesSection(slots: data.slots,),
                failure: (error) => CustomErrorWidget(
                  message: error.apiErrorModel.message,
                  onRetry: () => context.read<AvailableTimeCubit>().emitAvailableTimes(
                    fieldId: '',
                    date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
                  ),
                ),
              );
            },
          ),

          verticalSpace(context, height: 24),

          // ── Sticky booking bar ──
          BookingBottomBar(price: 300),
          verticalSpace(context, height: 60),
        ],
      ),
    );
  }
}

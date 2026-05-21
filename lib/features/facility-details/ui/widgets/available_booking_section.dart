import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/facility-details/logic/available_time_cubit.dart';
import 'package:yalla_kora/features/facility-details/logic/calendar_cubit/calendar_cubit.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/available_time_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/booking_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/calender_strip.dart';
import 'package:yalla_kora/features/home/data/near_facilities/model/field_model.dart';

import '../../../../core/widgets/error_widget.dart';

class AvailableBookings extends StatelessWidget {
  const AvailableBookings({super.key, required this.field});

  final FieldModel field;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocListener<CalendarCubit, CalendarState>(
        listenWhen: (pre, curr) => pre.selectedDateFormatted != curr.selectedDateFormatted,
        listener: (context, calState) {
          context.read<AvailableTimeCubit>().emitAvailableTimes(
            fieldId: field.id,
            date: calState.selectedDateFormatted
          );
        },
        child: Column(
        children: [
          // ── Month header + calendar ──
          verticalSpace(context, height: 20),
          CalendarStrip(),

          // ── Available times ──
          verticalSpace(context, height: 20),
          BlocBuilder<AvailableTimeCubit, AvailableTimeState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator()),
                success:  (data) => AvailableTimesSection(
                  slots: data.slots.where((s) => s.status == 'available').toList(),
                ),
                failure: (error) => CustomErrorWidget(
                  message: error.apiErrorModel.message,
                  onRetry: () => context.read<AvailableTimeCubit>().emitAvailableTimes(
                    fieldId: field.id,
                    date: context.read<CalendarCubit>().state.selectedDateFormatted,
                  ),
                ),
              );
            },
          ),

          verticalSpace(context, height: 24),

          // ── Sticky booking bar ──
          BookingBottomBar(
            facilityName: field.name,
            price: field.pricePerHour,
            date: context.read<CalendarCubit>().selectedTimeRange,
            matchType: '${field.type.label} (${field.type.id})',
          ),
          verticalSpace(context, height: 60),
        ],
      ),
),
    );
  }
}

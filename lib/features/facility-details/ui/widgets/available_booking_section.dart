import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/facility-details/ui/facility_details.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/available_time_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/booking_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/calender_strip.dart';

class AvailableBookings extends StatelessWidget {
  const AvailableBookings({super.key, required this.days, required this.slots});

  final List<DayModel> days;
  final List<TimeSlotModel> slots;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // ── Month header + calendar ──
          verticalSpace(context, height: 20),
          CalendarStrip(month: 'فبراير 2026', days: days),

          // ── Available times ──
          verticalSpace(context, height: 20),
          AvailableTimesSection(slots: slots),

          verticalSpace(context, height: 24),

          // ── Sticky booking bar ──
          BookingBottomBar(price: 300),
          verticalSpace(context, height: 60),
        ],
      ),
    );
  }
}

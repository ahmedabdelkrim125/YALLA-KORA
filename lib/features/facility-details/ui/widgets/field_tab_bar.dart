// ══════════════════════════════════════════════════════
//  TAB BAR
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/features/facility-details/ui/facility_details.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/available_booking_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/facility_details_tab.dart';

class FieldTabBar extends StatelessWidget {
  const FieldTabBar({super.key, required this.days, required this.slots});

  final List<DayModel> days;
  final List<TimeSlotModel> slots;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w(context)),
            child: TabBar(
              indicatorColor: AppColors.primaryGreen,
              labelColor: Colors.white,
              dividerHeight: 0,
              unselectedLabelColor: AppColors.grey,
              tabs: const [
                Tab(text: 'التفاصيل'),
                Tab(text: 'الحجوزات المتاحة'),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              children: [
                FacilityDetailsTab(address: 'الف مسكن', city: 'القاهرة'),
                AvailableBookings(days: days, slots: slots),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

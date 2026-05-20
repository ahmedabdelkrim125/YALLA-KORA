// ══════════════════════════════════════════════════════
//  TAB BAR
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/di/dependency_injection.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/features/facility-details/logic/available_time_cubit.dart';
import 'package:yalla_kora/features/facility-details/logic/calendar_cubit/calendar_cubit.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/available_booking_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/facility_details_tab.dart';
import 'package:yalla_kora/features/home/data/near_facilities/model/field_model.dart';

class FieldTabBar extends StatelessWidget {
  const FieldTabBar({super.key, required this.field});

  final FieldModel field;

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
                FacilityDetailsTab(field: field),
                BlocProvider(
                  create: (context) => getIt<CalendarCubit>(),
                  child: BlocProvider(
                    create: (context) {
                      final calendarCubit = context.read<CalendarCubit>();
                      return getIt<AvailableTimeCubit>()..emitAvailableTimes(
                        fieldId: field.id,
                        date: calendarCubit.state.selectedDateFormatted
                      );
                    },
                    child: AvailableBookings(field: field,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
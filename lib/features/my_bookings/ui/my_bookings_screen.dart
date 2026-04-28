import 'package:flutter/material.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/features/my_bookings/ui/Widgets/booking_toggle_tabs.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/widgets/user_header/user_header.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBackground,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const UserHeader(
                greeting: 'أهلاً بك عالمي,',
              ),
              verticalSpace(context, height: 20),
              const BookingToggleTabs(),
            ],
          ),
        ),
      ),
    );
  }
}

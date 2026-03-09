import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'booking_tab_bar.dart';
import 'previous_content.dart';
import 'upcoming_content.dart';
import '../../../../core/helper/spacing.dart';

class BookingToggleTabs extends StatefulWidget {
  const BookingToggleTabs({super.key});

  @override
  State<BookingToggleTabs> createState() => _BookingToggleTabsState();
}

class _BookingToggleTabsState extends State<BookingToggleTabs> {
  int _selectedTab = 0;

  void _onTabChanged(int index) {
    if (_selectedTab == index) return;
    setState(() => _selectedTab = index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.responsiveWidth(20),
          ),
          child: BookingTabBar(
            selectedIndex: _selectedTab,
            onTabChanged: _onTabChanged,
          ),
        ),
        verticalSpace(context, height: 20),
        _selectedTab == 0 ? const PreviousContent() : const UpcomingContent(),
      ],
    );
  }
}

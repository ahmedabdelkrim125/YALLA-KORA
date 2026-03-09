import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import 'single_tab.dart';

class BookingTabBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const BookingTabBar({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.responsiveHeight(55),
      padding: EdgeInsets.only(
        top: context.responsiveHeight(4),
        left: context.responsiveWidth(4),
        right: context.responsiveWidth(4),
      ),
      decoration: ShapeDecoration(
        color: AppColors.card2,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.80,
            color: Colors.white.withValues(alpha: 0.06),
          ),
          borderRadius: BorderRadius.circular(context.responsiveRadius(14)),
        ),
        shadows: [
          BoxShadow(
            color: const Color(0x4C000000),
            blurRadius: context.responsiveRadius(12),
            offset: Offset(0, context.responsiveHeight(2)),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => onTabChanged(0),
              child: SingleTab(
                label: 'حجوزات سابقة',
                svgIcon: Assets.frameIcon_2,
                isActive: selectedIndex == 0,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => onTabChanged(1),
              child: SingleTab(
                label: 'حجوزات قادمة',
                svgIcon: Assets.frameIcon_1,
                isActive: selectedIndex == 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

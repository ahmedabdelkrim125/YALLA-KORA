import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'action_button_item.dart';

class SearchActionButtons extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChanged;

  const SearchActionButtons({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.responsivePadding(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(12.r(context)),
      ),
      child: Row(
        children: [
          ActionButtonItem(
            title: "حجز ملعب",
            icon: Assets.staduimicon,
            isSelected: selectedIndex == 0,
            onTap: () => onTabChanged(0),
          ),
          horizontalSpace(context, width: 12),
          ActionButtonItem(
            title: "انضم لتقسيمة",
            icon: Assets.handshake,
            isSelected: selectedIndex == 1,
            onTap: () => onTabChanged(1),
          ),
        ],
      ),
    );
  }
}

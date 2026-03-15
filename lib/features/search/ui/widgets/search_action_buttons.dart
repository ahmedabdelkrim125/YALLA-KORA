import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
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
    return Row(
      children: [
        ActionButtonItem(
          title: "حجز ملعب",
          icon: Assets.football,
          isSelected: selectedIndex == 0,
          onTap: () => onTabChanged(0),
        ),
        horizontalSpace(context, width: 12),
        ActionButtonItem(
          title: "انضم لتقسيمة",
          icon: Assets.handshakeIcon,
          isSelected: selectedIndex == 1,
          onTap: () => onTabChanged(1),
        ),
      ],
    );
  }
}
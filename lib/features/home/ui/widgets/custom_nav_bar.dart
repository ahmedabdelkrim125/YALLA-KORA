import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'nav_bar_item.dart';

class CustomNavigationBar extends StatelessWidget {
  final ValueChanged<int> onItemSelected;
  final int selectedIndex;

  const CustomNavigationBar({
    super.key, required this.onItemSelected, required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: AppColors.darkBackground2,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.w(context)),
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem(index: 0, label: "الرئيسية", iconPath: Assets.homeIcon,),
            buildNavItem(index: 1, label: "أستكشف", iconPath:  Assets.exploreIcon,),
            buildNavItem(index: 2, label: "حجوزاتى", iconPath:  Assets.myBooksIcon,),
            buildNavItem(index: 3, label: "الفرق", iconPath:  Assets.teamsIcon,),
            buildNavItem(index: 4, label: "حسابى", iconPath:  Assets.accountIcon,),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem({required int index, required String label, required String iconPath}) {
    return GestureDetector(
      onTap: () => onItemSelected(index),
      child: NavigationBarItem(
        isSelected: selectedIndex == index,
        label: label,
        iconPath: iconPath,
      ),
    );
  }
}
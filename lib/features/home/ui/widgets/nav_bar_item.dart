import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key, required this.isSelected, required this.label, required this.iconPath,
  });

  final String label;
  final String iconPath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ?
    Container(
      padding: EdgeInsets.symmetric(vertical: 5.h(context), horizontal: 2.w(context)),
      decoration: BoxDecoration(
        color: AppColors.darkBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(label, style: TextStyles.boldWhite10,),
          SizedBox(width: 2.w(context),),
          SvgPicture.asset(iconPath),
        ],
      ),
    ): SvgPicture.asset(iconPath);
  }
}
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

import '../../../../core/helper/responsive_extensions.dart';

class LoadMoreButton extends StatelessWidget {
  const LoadMoreButton({super.key, required this.onPress});

  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'عرض المزيد',
            style: TextStyles.boldWhite12.copyWith(
              color: AppColors.primaryGreen,
            ),
          ),
          SizedBox(width: 8.w(context)),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.primaryGreen,
            size: 20,
          ),
        ],
      ),
    );
  }
}

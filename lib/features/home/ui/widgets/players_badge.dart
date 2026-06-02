// ─────────────────────────────────────────
//  PLAYERS BADGE
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class PlayersBadge extends StatelessWidget {
  final int count;

  const PlayersBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    final isRed = count <= 4;
    final dotColor = isRed
        ? count <= 2
              ? AppColors.red
              : AppColors.yellow
        : AppColors.primaryGreen;
    final icon = isRed
        ? count <= 2
              ? Assets.peopleRedIcon
              : Assets.peopleYellowIcon
        : Assets.peopleGreenIcon;

    final bgColor = dotColor.withOpacity(0.15);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: bgColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(icon),
          const SizedBox(width: 4),
          Text(
            'ناقص $count لاعيبه',
            style: TextStyles.mediumWhite10.copyWith(color: dotColor),
          ),
        ],
      ),
    );
  }
}

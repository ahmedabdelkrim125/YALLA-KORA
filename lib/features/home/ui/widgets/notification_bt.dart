// ─────────────────────────────────────────
//  NOTIFICATION BUTTON
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 44,
          height: 44,
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: AppColors.card2,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(Assets.notificationsIcon),
        ),
        Positioned(
          top: 8,
          right: 12,
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: AppColors.primaryGreen,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
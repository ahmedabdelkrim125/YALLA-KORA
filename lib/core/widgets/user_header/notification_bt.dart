import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 44.w(context),
          height: 44.h(context),
          padding: EdgeInsets.all(10.r(context)),
          decoration: const BoxDecoration(
            color: AppColors.card2,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(Assets.notificationsIcon),
        ),
        Positioned(
          top: 8.h(context),
          right: 12.w(context),
          child: Container(
            width: 8.r(context),
            height: 8.r(context),
            decoration: BoxDecoration(
              color: AppColors.primaryGreen,
              border: Border.all(width: 1.w(context)),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}

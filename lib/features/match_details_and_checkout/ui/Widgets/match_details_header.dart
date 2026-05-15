import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';

class MatchDetailsHeader extends StatelessWidget {
  const MatchDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 240.h(context),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(Assets.facility6, fit: BoxFit.cover),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                child: Padding(
                  padding: context.responsivePadding(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeroCircleButton(
                        icon: Icons.arrow_back_ios,
                        onPressed: () => context.pop(),
                      ),
                      HeroCircleButton(
                        icon: Icons.favorite_border_rounded,
                        color: AppColors.slateGray,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeroCircleButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final VoidCallback onPressed;

  const HeroCircleButton({
    super.key,
    required this.icon,
    this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 40.w(context),
        height: 40.h(context),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.45),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: color ?? Colors.white, size: 20.r(context)),
      ),
    );
  }
}

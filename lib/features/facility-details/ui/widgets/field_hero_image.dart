import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';

class FieldHeroImage extends StatelessWidget {
  const FieldHeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Pitch background
          Image.asset(Assets.facility6, fit: BoxFit.cover),

          // Top bar: back + image counter + favorite
          Positioned(
            top: 0, left: 0, right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeroCircleButton(icon: Icons.arrow_back_ios, onPressed: () => context.pop(),),
                    HeroCircleButton(icon: Icons.favorite_border_rounded, color: AppColors.slateGray, onPressed: () {  },),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Hero circle button ────────────────────────────────
class HeroCircleButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final VoidCallback onPressed;
  const HeroCircleButton({super.key, required this.icon, this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 40.w(context), height: 40.h(context),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.45),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: color ?? Colors.white, size: 20),
      ),
    );
  }
}
// ══════════════════════════════════════════════════════
//  HERO IMAGE
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/widgets/cards/field_hero_circle_button.dart';

class FieldHeroImage extends StatelessWidget {
  const FieldHeroImage({super.key, required this.imagePath});

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h(context),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Pitch background
          Image.asset(imagePath, fit: BoxFit.cover),

          // Top bar: back + image counter + favorite
          Positioned(
            top: 0, left: 0, right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FieldHeroCircleButton(icon: Icons.arrow_back_ios, onPressed: () => context.pop(),),
                    FieldHeroCircleButton(icon: Icons.favorite_border_rounded, color: AppColors.slateGray, onPressed: () {  },),
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
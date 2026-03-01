// ─────────────────────────────────────────
//  BADGE CHIP
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class BadgeChip extends StatelessWidget {
  final String label;

  const BadgeChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xB2000000),
        border: Border.all(color: AppColors.darkGreen),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyles.boldWhite9.copyWith(color: AppColors.primaryGreen),
      ),
    );
  }
}
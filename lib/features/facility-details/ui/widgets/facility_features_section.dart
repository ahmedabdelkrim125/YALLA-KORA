// ══════════════════════════════════════════════════════
//  FACILITY FEATURES SECTION
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

import '../../../home/data/near_facilities/model/field_model.dart';

class FacilityFeaturesSection extends StatelessWidget {
  const FacilityFeaturesSection({super.key, required this.features});

  final List<Feature> features;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section title
          Text('تفاصيل الملعب', style: TextStyles.boldWhite16),

          verticalSpace(context, height: 12),

          // Chips grid — Wrap so it adapts to screen width
          Wrap(
            spacing: 4,
            runSpacing: 8,
            children: features
                .map((f) => FeatureChip(feature: f))
                .toList(),
          ),
        ],
      ),
    );
  }
}

// ── Feature chip ──────────────────────────────────────
class FeatureChip extends StatelessWidget {
  const FeatureChip({super.key, required this.feature});

  final Feature feature;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.responsivePadding(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(8.r(context)),
        border: Border.all(
          color: Colors.white.withOpacity(0.1),
          width: 0.8,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            feature.name,
            style: TextStyles.mediumWhite12.copyWith(color: AppColors.grey),
          ),
          // horizontalSpace(context, width: 4),
          // SvgPicture.asset(feature.icon,),
        ],
      ),
    );
  }
}
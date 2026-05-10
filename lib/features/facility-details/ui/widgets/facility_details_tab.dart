import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/facility_address_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/facility_features_section.dart';

import '../../../home/data/near_facilities/model/field_model.dart';

// ══════════════════════════════════════════════════════
//  MODELS
// ══════════════════════════════════════════════════════
class FacilityFeature {
  final String label;
  final String icon;
  final Color iconColor;

  const FacilityFeature({
    required this.label,
    required this.icon,
    required this.iconColor,
  });
}

// ══════════════════════════════════════════════════════
//  DETAILS TAB  (root widget — drop into TabBarView)
// ══════════════════════════════════════════════════════
class FacilityDetailsTab extends StatelessWidget {
  const FacilityDetailsTab({super.key, required this.field});

  final FieldModel field;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(context, height: 20),
          // ── Facility Features ──
          FacilityFeaturesSection(features: field.features),
          verticalSpace(context, height: 34),
          // ── Address + Map ──
          FacilityAddressSection(address: field.location.address, city: field.location.name),
          verticalSpace(context, height: 60),
        ],
      ),
    );
  }
}




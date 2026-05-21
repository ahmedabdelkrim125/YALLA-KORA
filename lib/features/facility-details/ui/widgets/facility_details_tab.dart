import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/facility_address_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/facility_features_section.dart';

import '../../../home/data/near_facilities/model/field_model.dart';
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
          FacilityAddressSection(
            address: field.location.address,
            city: field.location.name,
            lat: field.location.lat,
            lng: field.location.lng,
          ),
          verticalSpace(context, height: 60),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/field_hero_image.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/field_info_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/field_tab_bar.dart';
import 'package:yalla_kora/features/home/data/near_facilities/model/field_model.dart';

import '../../../core/constants/app_images.dart';

class FacilityDetails extends StatelessWidget {
  const FacilityDetails({super.key, required this.field});

  final FieldModel field;
  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            FieldHeroImage(imagePath: field.images.isNotEmpty
                ? field.images[0]
                : Assets.facility6,),
            verticalSpace(context, height: 20),

            FieldInfoSection(
              name: field.name,
              rating: field.rating,
              reviewCount: field.reviewsCount,
              price: field.pricePerHour,
              openTime: field.workingHours.openTime,
              closeTime: field.workingHours.closeTime,
            ),

            verticalSpace(context, height: 28),

            Expanded(
              child: FieldTabBar(
                field: field,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
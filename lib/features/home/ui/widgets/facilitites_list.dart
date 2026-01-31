import 'package:flutter/material.dart';
import 'package:yalla_kora/features/home/data/models/facility_model.dart';
import 'package:yalla_kora/features/home/ui/widgets/facility_card.dart';

class FacilitiesList extends StatelessWidget {
  const FacilitiesList({
    super.key,
    required this.facilities,
  });

  final List<FacilityModel> facilities;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: facilities.length,
        itemBuilder: (context, index) {
          final facility = facilities[index];
          return FacilityCard(
            imagePath: facility.imageUrl,
            address: facility.address,
            pricePerHour: facility.pricePerHour,
            isAvailable: facility.isAvailable,
            rating: facility.rating,
            reviewsCount: facility.reviewsCount,
          );
        });
  }
}

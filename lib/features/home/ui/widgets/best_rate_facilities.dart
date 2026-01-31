import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/features/home/data/models/facility_model.dart';
import 'package:yalla_kora/features/home/ui/widgets/facilitites_list.dart';

class BestRateFacilities extends StatelessWidget {
  const BestRateFacilities({
    super.key, required this.facilities,
  });

  final List<FacilityModel> facilities;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h(context),
      child: FacilitiesList(facilities: facilities),
    );
  }
}
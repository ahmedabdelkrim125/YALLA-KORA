import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class FacilityInfoSection extends StatelessWidget {
  const FacilityInfoSection({
    super.key, required this.address, required this.pricePerHour, required this.availability, required this.rating, required this.reviewsCount,
  });

  final String address;
  final double pricePerHour;
  final bool availability;
  final double rating;
  final int reviewsCount;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(Assets.pinIcon),
            Text(address, style: TextStyles.boldWhite16,),
          ],
        ),
        Text('$pricePerHour ج/س', style: TextStyles.boldWhite10,),
        Text(availability?'متاح': 'محجوز', style: TextStyles.boldWhite10,),
        Row(
          children: [
            SvgPicture.asset(Assets.starIcon),
            Text(' $rating ($reviewsCount)', style: TextStyles.boldWhite10,),
          ],
        ),
      ],);
  }
}

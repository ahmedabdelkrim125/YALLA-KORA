import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';
import 'package:yalla_kora/features/home/ui/widgets/facility_info_section.dart';

class FacilityCard extends StatelessWidget {
  const FacilityCard({
    super.key,
    required this.imagePath,
    required this.address,
    required this.pricePerHour,
    required this.isAvailable,
    required this.rating,
    required this.reviewsCount,
  });

  final String imagePath;
  final String address;
  final double pricePerHour;
  final bool isAvailable;
  final double rating;
  final int reviewsCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      height: 230.h(context),
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            // Image
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // Gradient overlay
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black],
                ),
              ),
            ),

            // Text content
            Positioned(
              right: 20.w(context),
              bottom: 16.h(context),
              left: 20.w(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: FacilityInfoSection(
                      address: address,
                      pricePerHour: pricePerHour,
                      availability: isAvailable,
                      rating: rating,
                      reviewsCount: reviewsCount,
                    ),
                  ),
                  SizedBox(height: 8.h(context)),
                  AppButton(title: 'احجز الان', onPressed: () {}),
                ],
              ),
            ),

            // Favorite icon
            Positioned(
              top: 16.h(context),
              left: 16.w(context),
              child: SvgPicture.asset(Assets.favIcon),
            ),
          ],
        ),
      ),
    );
  }
}

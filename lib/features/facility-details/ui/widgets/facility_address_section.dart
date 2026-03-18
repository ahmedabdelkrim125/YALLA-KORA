// ══════════════════════════════════════════════════════
//  FACILITY ADDRESS SECTION
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class FacilityAddressSection extends StatelessWidget {
  const FacilityAddressSection({
    super.key,
    required this.address,
    required this.city,
  });

  final String address;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Map card ──
          SectionTitle(label: 'العنوان', trailLabel: 'الخريطة'),
          verticalSpace(context, height: 12),
          FacilityMapWidget(),
          verticalSpace(context, height: 8),
          AddressSection(address: address, city: city),
        ],
      ),
    );
  }
}

class AddressSection extends StatelessWidget {
  const AddressSection({super.key, required this.address, required this.city});

  final String address;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(Assets.locationGreen),
        horizontalSpace(context, width: 2),
        Text('$address - $city', style: TextStyles.regularWhite14),
      ],
    );
  }
}

// ══════════════════════════════════════════════════════
//  MAP WIDGET  (static placeholder — swap with google_maps_flutter)
// ══════════════════════════════════════════════════════
class FacilityMapWidget extends StatelessWidget {
  const FacilityMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r(context)),
      child: Image.asset(Assets.mapImage, fit: BoxFit.cover),
    );
  }
}

// ══════════════════════════════════════════════════════
//  SHARED — SECTION TITLE
// ══════════════════════════════════════════════════════
class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.label,
    required this.trailLabel,
  });

  final String label;
  final String trailLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(label, style: TextStyles.boldWhite16),
          Spacer(),
          Text(
            trailLabel,
            style: TextStyles.regularWhite12.copyWith(
              color: AppColors.primaryGreen,
            ),
          ),
        ],
      ),
    );
  }
}

// ══════════════════════════════════════════════════════
//  FIELD INFO SECTION
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class FieldInfoSection extends StatelessWidget {
  final String name;
  final double rating;
  final int    reviewCount;
  final int    price;
  final String   openTime;
  final String   closeTime;

  const FieldInfoSection({
    super.key, required this.name, required this.rating,
    required this.reviewCount, required this.price, required this.openTime, required this.closeTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: TextStyles.boldWhite20),
              FieldPriceTag(price: price),
            ],
          ),
          verticalSpace(context, height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OpenStatusBadge(openTime: openTime, closeTime: closeTime,),
              RatingRow(rating: rating, reviewCount: reviewCount),
            ],
          ),
          verticalSpace(context, height: 6),
        ],
      ),
    );
  }
}

// ── Open status badge ─────────────────────────────────
class OpenStatusBadge extends StatelessWidget {
  final String   openTime;
  final String   closeTime;
  const OpenStatusBadge({super.key, required this.openTime, required this.closeTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 0.8, color: Colors.white.withOpacity(0.05))
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h(context), horizontal: 2.w(context)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(Assets.timeIcon, color: AppColors.primaryGreen,),
            horizontalSpace(context, width: 4),
            Text('مفتوح من ${openTime.substring(0,2)} الي ${closeTime.substring(0,2)} ',
              style: TextStyles.mediumWhite12.copyWith(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Rating row ────────────────────────────────────────
class RatingRow extends StatelessWidget {
  final double rating;
  final int    reviewCount;
  const RatingRow({super.key, required this.rating, required this.reviewCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.star_rounded, color: Color(0xFFFFC107), size: 20),
        horizontalSpace(context, width: 4),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:rating.toStringAsFixed(1),
                style: TextStyles.boldWhite14,
              ),
              TextSpan(text: ' '),
              TextSpan(
                  text: '($reviewCount تقييم)',
                  style: TextStyles.mediumWhite12.copyWith(color: AppColors.grey)
              ),
            ],
          ),),
      ],
    );
  }
}

// ── Field price tag ───────────────────────────────────
class FieldPriceTag extends StatelessWidget {
  final int price;
  const FieldPriceTag({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$price ج',
            style: TextStyles.boldWhite20,
          ),
          TextSpan(
              text:'/ الساعة',
              style: TextStyles.mediumWhite12.copyWith(color: AppColors.grey)
          ),
        ],
      ),
    );
  }
}
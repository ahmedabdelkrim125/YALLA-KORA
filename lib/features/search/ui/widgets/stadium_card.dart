// ─────────────────────────────────────────
//  Staduim Card (Updated with Favorite Icon)
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/home/ui/home_screen.dart';
import 'package:yalla_kora/features/home/ui/widgets/field_image.dart';
import 'package:yalla_kora/features/home/ui/widgets/primary_button.dart';

class StadiumCard extends StatelessWidget {
  final FieldModel field;

  const StadiumCard({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 213,
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0x0fffffff)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              FieldImage(imagePath: field.image, badge: field.badge),

              Positioned(
                top: 8,
                left: 12,
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 6,
                left: 12,
                right: 12,
                bottom: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(field.name, style: TextStyles.boldWhite12),
                            const SizedBox(height: 16),
                            Text(
                              '📍 ${field.location}',
                              style: TextStyles.boldWhite10.copyWith(
                                color: AppColors.darkGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            field.price,
                            style: TextStyles.semiBoldWhite10.copyWith(
                              color: AppColors.orangeColor,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            field.availability,
                            style: TextStyles.mediumWhite8.copyWith(
                              color: AppColors.orangeColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const PrimaryButton(label: 'احجز الآن'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

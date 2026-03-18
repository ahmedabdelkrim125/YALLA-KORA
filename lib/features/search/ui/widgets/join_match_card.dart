import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/cards/field_hero_circle_button.dart';
import 'package:yalla_kora/features/home/ui/widgets/badge_chip.dart';

class JoinMatchCard extends StatelessWidget {
  const JoinMatchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width * .5).w(context),
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(16.r(context)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.r(context))),
                child: Image.asset(
                  Assets.facility6,
                  height: 100.h(context),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: const BadgeChip(label: 'خماسي'),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Transform.scale(
                  scale: 0.8,
                  child: FieldHeroCircleButton(
                    icon: Icons.favorite_border_rounded,
                    color: AppColors.slateGray,
                    onPressed: () {},
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Text(
                  "النهاردة 10:30 م",
                  style: TextStyles.boldWhite10.copyWith(
                    color: AppColors.timeColor,
                  ),
                ),
              ),
              Positioned(
                bottom: 8.h(context),
                left: 8.w(context),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w(context), vertical: 2.h(context)),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20.r(context)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: AppColors.timeColor, size: 12.r(context)),
                      horizontalSpace(context, width: 4),
                      Text(
                        "4.8",
                        style: TextStyles.boldWhite10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.r(context)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      "ملعب العالمي",
                      style: TextStyles.boldWhite12,
                    ),
                    Row(
                      children: [
                        Text(
                          '📍 ${"مدينة نصر"}',
                          style: TextStyles.regularGrey10.copyWith(
                            color: AppColors.darkGreen,
                          ),
                        ),
                        horizontalSpace(context, width: 2),
                      ],
                    ),
                  ],
                ),
                verticalSpace(context, height: 6),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      "5 من 10 لاعب",
                      style: TextStyles.regularGrey10,
                    ),
                    Text(
                      "فاضل 5",
                      style: TextStyles.regularGrey8.copyWith(

                        color: AppColors.primaryGreen,
                      ),
                    ),
                  ],
                ),
                verticalSpace(context, height: 6),

                Directionality(
                  textDirection: TextDirection.rtl,
                  child: LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: Colors.grey[800],
                    color: AppColors.primaryGreen,
                    minHeight: 4.h(context),
                    borderRadius: BorderRadius.circular(2.r(context)),
                  ),
                ),
                verticalSpace(context, height: 8),

                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        "50 ج / فرد",
                        style: TextStyles.regularGrey10,
                      ),
                    ),
                    horizontalSpace(context, width: 8),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 6.h(context)),
                        decoration: BoxDecoration(
                          color: AppColors.primaryGreen,
                          borderRadius: BorderRadius.circular(8.r(context)),
                        ),
                        child: Center(
                          child: Text(
                            "انضم الآن",
                            style: TextStyles.boldDarkBackground12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      width: 175.w,
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
                child: Image.asset(
                  'assets/images/facility6.jpg',
                  height: 100.h,
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
                  style: TextStyles.boldWhite14.copyWith(
                    fontSize: 10.sp,
                    color: AppColors.timecolor,
                  ),
                ),
              ),
              Positioned(
                bottom: 8.h,
                left: 8.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: AppColors.timecolor, size: 12.r),
                      horizontalSpace(context, width: 4),
                      Text(
                        "4.8",
                        style: TextStyles.boldWhite14.copyWith(fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      "ملعب العالمي",
                      style: TextStyles.boldWhite14.copyWith(fontSize: 12.sp),
                    ),
                    Row(
                      children: [
                        Text(
                          '📍 ${"مدينة نصر"}',
                          style: TextStyles.regularGrey12.copyWith(
                            fontSize: 9.sp,
                            color: AppColors.transparentGreen,
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
                      style: TextStyles.regularGrey12.copyWith(fontSize: 9.sp),
                    ),
                    Text(
                      "فاضل 5",
                      style: TextStyles.regularGrey12.copyWith(
                        fontSize: 8.sp,
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
                    minHeight: 4.h,
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
                verticalSpace(context, height: 8),

                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      "50 ج / فرد",
                      style: TextStyles.regularGrey12.copyWith(fontSize: 9.sp),
                    ),
                    horizontalSpace(context, width: 8),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 6.h),
                        decoration: BoxDecoration(
                          color: AppColors.primaryGreen,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Center(
                          child: Text(
                            "انضم الآن",
                            style: TextStyles.boldDarkBackground18.copyWith(
                              fontSize: 11.sp,
                            ),
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

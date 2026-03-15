import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class StadiumCard extends StatelessWidget {
  const StadiumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.w,
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
                child: Image.asset(
                  'assets/images/stadium.jpg',
                  height: 100.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Icon(Icons.favorite_border, color: Colors.white, size: 18.r),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: AppColors.primaryGreen,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Text(
                    "خماسي",
                    style: TextStyles.boldDarkBackground18.copyWith(fontSize: 8.sp),
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                left: 8,
                child: Row(
                  children: [
                    Text(
                      "4.8",
                      style: TextStyles.boldWhite14.copyWith(fontSize: 10.sp),
                    ),
                    Icon(Icons.star, color: Colors.amber, size: 10.r),
                  ],
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
                      "ملعب الهدف",
                      style: TextStyles.boldWhite14.copyWith(fontSize: 12.sp),
                    ),
                    Text(
                      "300 ج / ساعة",
                      style: TextStyles.mediumprimaryGreen12.copyWith(
                        color: Colors.amber,
                        fontSize: 9.sp,
                      ),
                    ),
                  ],
                ),
                
                verticalSpace(context, height: 6),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Row(
                      children: [
                        Text(
                          "مدينة نصر",
                          style: TextStyles.regularGrey12.copyWith(fontSize: 9.sp),
                        ),
                        horizontalSpace(context, width: 2),
                        Icon(Icons.location_on, color: AppColors.primaryGreen, size: 10.r),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "متاح 9م - 11م",
                          style: TextStyles.regularGrey12.copyWith(fontSize: 9.sp),
                        ),
                        horizontalSpace(context, width: 2),
                        Icon(Icons.access_time, color: Colors.grey, size: 10.r),
                      ],
                    ),
                  ],
                ),
                
                verticalSpace(context, height: 12),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  decoration: BoxDecoration(
                    color: AppColors.primaryGreen,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Center(
                    child: Text(
                      "احجز الآن",
                      style: TextStyles.boldDarkBackground18.copyWith(fontSize: 11.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

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
                  'assets/images/stadium.jpg',
                  height: 100.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
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
                  child: Text("خماسي", style: TextStyles.boldDarkBackground18.copyWith(fontSize: 8.sp)),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Icon(Icons.favorite_border, color: Colors.white, size: 18.r),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Text(
                  "النهاردة 10:30 م",
                  style: TextStyles.boldWhite14.copyWith(fontSize: 10.sp),
                ),
              ),
              Positioned(
                bottom: 4,
                left: 8,
                child: Row(
                  children: [
                    Text("4.8", style: TextStyles.boldWhite14.copyWith(fontSize: 10.sp)),
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
                    Text("ملعب العالمي", style: TextStyles.boldWhite14.copyWith(fontSize: 12.sp)),
                    Text("50 ج / فرد", style: TextStyles.mediumprimaryGreen12.copyWith(color: Colors.amber, fontSize: 9.sp)),
                  ],
                ),
                verticalSpace(context, height: 6),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Row(
                      children: [
                        Text("5 من 10 لاعب", style: TextStyles.regularGrey12.copyWith(fontSize: 9.sp)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("مدينة نصر", style: TextStyles.regularGrey12.copyWith(fontSize: 9.sp)),
                        horizontalSpace(context, width: 2),
                        Icon(Icons.location_on, color: AppColors.primaryGreen, size: 10.r),
                      ],
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
                verticalSpace(context, height: 4),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("فاضل 5", style: TextStyles.regularGrey12.copyWith(fontSize: 8.sp, color: AppColors.primaryGreen)),
                  ],
                ),

                verticalSpace(context, height: 10),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  decoration: BoxDecoration(
                    color: AppColors.primaryGreen,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Center(
                    child: Text("انضم الآن", style: TextStyles.boldDarkBackground18.copyWith(fontSize: 11.sp)),
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


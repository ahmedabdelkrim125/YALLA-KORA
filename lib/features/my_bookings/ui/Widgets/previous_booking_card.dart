import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/helper/spacing.dart';
import 'booking_action_button.dart';

class PreviousBookingCard extends StatelessWidget {
  const PreviousBookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: context.responsivePadding(horizontal: 16, vertical: 0),
        child: Container(
          padding: context.responsivePadding(horizontal: 16, vertical: 20),
          decoration: BoxDecoration(
            color: AppColors.card2,
            borderRadius: BorderRadius.circular(context.responsiveRadius(16)),
            border: Border.all(
              width: 0.80,
              color: Colors.white.withValues(alpha: 0.05),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ملعب الهدف - خماسي', style: TextStyles.boldWhite16),
                  Container(
                    padding: context.responsivePadding(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.greyBg,
                      borderRadius: BorderRadius.circular(
                        context.responsiveRadius(100),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('منتهي', style: TextStyles.regularMuted12),
                        horizontalSpace(context, width: 4),

                        Icon(
                          Icons.check_circle_outline,
                          color: AppColors.muted,
                          size: context.responsiveRadius(12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpace(context, height: 16),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    color: AppColors.muted,
                    size: context.responsiveRadius(15),
                  ),
                  horizontalSpace(context, width: 4),
                  Text('الاثنين، 3 ديسمبر', style: TextStyles.regularMuted13),
                  horizontalSpace(context, width: 12),
                  Icon(
                    Icons.access_time,
                    color: AppColors.muted,
                    size: context.responsiveRadius(15),
                  ),
                  horizontalSpace(context, width: 4),
                  Text('09:00 م', style: TextStyles.regularMuted13),
                ],
              ),
              verticalSpace(context, height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: BookingActionButton(
                      title: 'احجز مرة تانية',
                      svgimage: Assets.refreshIcon,
                      bgColor: Colors.transparent,
                      borderColor: AppColors.primaryGreen,
                      textStyle: TextStyles.semiBoldPrimaryGreen12,
                    ),
                  ),
                  horizontalSpace(context, width: 13),
                  Expanded(
                    flex: 3,
                    child: BookingActionButton(
                      svgimage: Assets.starIcon,
                      title: 'تقييم',
                      bgColor: Colors.transparent,
                      borderColor: AppColors.ratingOrange,
                      textStyle: TextStyles.semiBoldRatingOrange12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════
//  BOOKING BOTTOM BAR
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/helper/helper_functions/build_snack_bar.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';
import 'package:yalla_kora/features/facility-details/logic/available_time_cubit.dart';

class BookingBottomBar extends StatelessWidget {
  final int price;
  final String date, matchType, facilityName;
  const BookingBottomBar({super.key, required this.price, required this.date, required this.matchType, required this.facilityName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: AppButton(
              title: 'حجز الملعب',
              onPressed: () {
                final slot = context.read<AvailableTimeCubit>().selectedSlot;
                if(slot == null){
                  buildSnackBar(context: context, text: 'اختار معاد الخجز');
                  return;
                }

                context.pushNamed(Routes.bookingConfirmation, arguments:{
                'bookingPrice': price,
                'date': date,
                'timeRange': '${slot.time} (ساعة)',
                'matchType': matchType,
                'facilityName': facilityName,
              });
              },
            ),
          ),
          horizontalSpace(context, width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: '$price ج ', style: TextStyles.boldWhite20),
                    TextSpan(
                      text: '/ الساعة',
                      style: TextStyles.mediumWhite12.copyWith(
                        color: AppColors.muted,
                      ),
                    ),
                  ],
                ),
              ),
              Text('السعر حسب الوقت المختار', style: TextStyles.regularGrey10),
            ],
          ),
          // Book button
        ],
      ),
    );
  }
}

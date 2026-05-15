// ══════════════════════════════════════════════════════
//  BOOKING BOTTOM BAR
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';

class BookingBottomBar extends StatelessWidget {
  final int price;
  const BookingBottomBar({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16.w(context)),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: AppButton(
              title: 'حجز الملعب',
              onPressed: () => context.pushNamed(Routes.bookingConfirmation),
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

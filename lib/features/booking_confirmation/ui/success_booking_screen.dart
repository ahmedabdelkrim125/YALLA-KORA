import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/booking_info_section.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/price_summary_section.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/success_booking_widgets/booking_id_card.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/success_booking_widgets/booking_success_animation.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/success_booking_widgets/success_action_buttons.dart';

class SuccessBookingScreen extends StatelessWidget {
  const SuccessBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: context.responsivePadding(horizontal: 20, vertical: 24,),
                child: Column(
                  children: [
                    SizedBox(height: kToolbarHeight,),
                    Center(child: const BookingSuccessAnimation()),
                    verticalSpace(context, height: 24),
                    Text(
                      'تم تأكيد حجزك!',
                      style: TextStyles.extraBoldWhite24,
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(context, height: 8),
                    Text(
                      'سيتم إرسال تفاصيل الحجز على بريدك الإلكتروني',
                      style: TextStyles.regularWhite14.copyWith(
                        color: AppColors.muted,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(context, height: 32),
                    BookingIdCard(bookingId: '#BO-2547',),
                    verticalSpace(context, height: 24),
                    const BookingInfoSection(
                      facilityName: 'ملعب الهدف الرياضي',
                      date: 'الاثنين، 3 ديسمبر 2025',
                      timeRange: '05:00 م - 06:00 م (ساعة)',
                      matchType: 'خماسي (5 ضد 5)',
                    ),
                    verticalSpace(context, height: 16),
                    PriceSummarySection(bookingPrice: 300, serviceFee: 10,),
                    verticalSpace(context, height: 12),
                    SuccessActionButtons(
                      onDownload: () {  },
                      onShare: () {  },
                    ),
                    verticalSpace(context, height: 24),
                    AppButton(
                      title: 'العودة للرئيسية',
                      onPressed: () {
                        context.pushNamedAndRemoveUntil(
                          Routes.mainScreen,
                          predicate: (_) => false,
                        );
                      },
                    ),
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

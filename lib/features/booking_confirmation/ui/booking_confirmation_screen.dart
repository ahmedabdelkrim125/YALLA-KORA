import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/widgets/custom_basic_appbar.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/booking_info_section.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/confirm_booking_button.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/discount_section.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/payment_method_selection.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/price_summary_section.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/title_header.dart';
import '../../../core/helper/responsive_extensions.dart';

class BookingConfirmationScreen extends StatelessWidget {
  const BookingConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomBasicAppBar(title: 'تأكيد الحجز'),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: context.responsivePadding(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(context, height: 8),
                const BookingInfoSection(
                  facilityName: 'ملعب الهدف الرياضي',
                  date: 'الاثنين، 3 ديسمبر 2025',
                  timeRange: '05:00 م - 06:00 م (ساعة)',
                  matchType: 'خماسي (5 ضد 5)',
                ),
                verticalSpace(context, height: 24),
                const TitleHeader(title: 'طريقة الدفع',),
                verticalSpace(context, height: 12),
                PaymentMethodSection(),
                verticalSpace(context, height: 24),
                const TitleHeader(title: 'عندك كود خصم؟',),
                verticalSpace(context, height: 16),
                DiscountCodeSection(),
                verticalSpace(context, height: 24),
                PriceSummarySection(bookingPrice: 300, serviceFee: 10,),
                verticalSpace(context, height: 16),
                ConfirmBookingButton(),
                verticalSpace(context, height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



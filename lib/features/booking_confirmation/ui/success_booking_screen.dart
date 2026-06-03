import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/helper/helper_functions/get_players_count.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/utils/date_time_formatter.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';
import 'package:yalla_kora/features/booking_confirmation/data/models/booking_response.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/booking_info_section.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/price_summary_section.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/success_booking_widgets/booking_id_card.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/success_booking_widgets/booking_success_animation.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/success_booking_widgets/success_action_buttons.dart';

class SuccessBookingScreen extends StatelessWidget {
  const SuccessBookingScreen({super.key, required this.booking});
  final Booking booking;
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
                padding: context.responsivePadding(
                  horizontal: 20,
                  vertical: 24,
                ),
                child: Column(
                  children: [
                    SizedBox(height: kToolbarHeight),
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
                    BookingIdCard(bookingId: booking.bookingCode),
                    verticalSpace(context, height: 24),
                    BookingInfoSection(
                      facilityName: booking.field.name,
                      date: '${DateTimeFormatter.dayFromDate(booking.date)}, ${DateTimeFormatter.dateToArabic(booking.date)}',
                      timeRange: '${DateTimeFormatter.timeToArabic12Hour(booking.timeFrom)} - ${DateTimeFormatter.timeToArabic12Hour(booking.timeTo)} (ساعة)',
                      matchType: getPlayersCountLabel(booking.type),
                    ),
                    verticalSpace(context, height: 16),
                    PriceSummarySection(bookingPrice: booking.totalPrice - booking.serviceFee, serviceFee: booking.serviceFee),
                    verticalSpace(context, height: 12),
                    SuccessActionButtons(onDownload: () {}, onShare: () {}),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

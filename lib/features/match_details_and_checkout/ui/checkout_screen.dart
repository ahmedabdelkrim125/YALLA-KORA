import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';
import '../../booking_confirmation/ui/widgets/booking_confirmation_widgets/payment_method_selection.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              _buildHeader(context),
              Expanded(
                child: SingleChildScrollView(
                  padding: context.responsivePadding(
                    horizontal: 20,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMatchSummaryCard(context),
                      verticalSpace(context, height: 32),
                      Text(
                        'اختر طريقة الدفع',
                        style: TextStyles.boldWhite16.copyWith(height: 1.50),
                      ),
                      verticalSpace(context, height: 12),
                      const PaymentMethodSection(),
                    ],
                  ),
                ),
              ),
              _buildBottomCheckoutBar(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 20, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 40.w(context)),
          Text(
            'تأكيد الانضمام',
            style: TextStyles.boldWhite18.copyWith(height: 1.50),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 40.w(context),
              height: 40.h(context),
              decoration: BoxDecoration(
                color: AppColors.cardBg2,
                borderRadius: BorderRadius.circular(12.r(context)),
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 18.r(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMatchSummaryCard(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r(context)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(16.r(context)),
          border: Border.all(width: 0.5, color: AppColors.slateGray50),
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 4.w(context),
                decoration: const BoxDecoration(color: AppColors.yellow),
              ),
              Expanded(
                child: Padding(
                  padding: context.responsivePadding(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'كابتن أحمد محمود',
                                style: TextStyles.boldWhite16.copyWith(
                                  height: 1.50,
                                ),
                              ),
                              Text(
                                'منظم التقسيمة',
                                style: TextStyles.regularMuted12.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 52.w(context),
                            height: 52.h(context),
                            padding: EdgeInsets.all(1.5.w(context)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2.w(context),
                                color: AppColors.primaryGreen,
                              ),
                            ),
                            child: ClipOval(
                              child: Image.network(
                                "https://picsum.photos/50/50",
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) =>
                                    Container(color: AppColors.darkAvatarBg),
                              ),
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(context, height: 16),
                      Container(
                        height: 1.h(context),
                        color: AppColors.slateGray50,
                      ),
                      verticalSpace(context, height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    color: AppColors.orangeColor,
                                    size: 18.r(context),
                                  ),
                                  horizontalSpace(context, width: 6),
                                  Text(
                                    '8:00 مساءً',
                                    style: TextStyles.boldWhite15.copyWith(
                                      height: 1.80,
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpace(context, height: 4),
                              Text(
                                '60 دقيقة',
                                style: TextStyles.regularMuted12.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'الجمعة',
                                    style: TextStyles.boldWhite15.copyWith(
                                      height: 1.80,
                                    ),
                                  ),
                                  horizontalSpace(context, width: 6),
                                  Icon(
                                    Icons.calendar_month_rounded,
                                    color: AppColors.primaryGreen,
                                    size: 18.r(context),
                                  ),
                                ],
                              ),
                              verticalSpace(context, height: 4),
                              Text(
                                '15 مارس 2026',
                                style: TextStyles.regularMuted12.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomCheckoutBar(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: context.responsivePadding(horizontal: 20, vertical: 16),
      decoration: const BoxDecoration(color: AppColors.darkBackground),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '30 ج.م',
                style: TextStyles.boldWhite15.copyWith(height: 1.50),
              ),
              Text('حصة الفرد', style: TextStyles.regularSlateGray15),
            ],
          ),
          verticalSpace(context, height: 12),
          Container(height: 1.h(context), color: AppColors.slateGray50),
          verticalSpace(context, height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('30 ج.م', style: TextStyles.boldPrimaryGreen24),
              Text(
                'الإجمالي',
                style: TextStyles.boldWhite18.copyWith(height: 1.50),
              ),
            ],
          ),
          verticalSpace(context, height: 24),
          AppButton(
            title: 'انضم للتقسيمة !',
            width: double.infinity,
            height: 60.h(context),
            borderRadius: 16,
            textStyle: TextStyles.extraBoldBlack18,
            boxShadow: const [
              BoxShadow(
                color: Color(0x3300FE81),
                blurRadius: 20,
                offset: Offset(0, 0),
              ),
            ],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

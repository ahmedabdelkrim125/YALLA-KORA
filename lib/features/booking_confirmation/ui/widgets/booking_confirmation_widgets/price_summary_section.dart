import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/custom_divider.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/section_card.dart';

class PriceSummarySection extends StatelessWidget {
  final int bookingPrice;
  final int serviceFee;

  const PriceSummarySection({
    super.key,
    required this.bookingPrice,
    required this.serviceFee,
  });

  int get total => bookingPrice + serviceFee;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        children: [
          _PriceRow(label: 'سعر الحجز', amount: bookingPrice),
          verticalSpace(context, height: 6),
          _PriceRow(label: 'رسوم الخدمة', amount: serviceFee),
          CustomDivider(),
          _TotalRow(total: total),
        ],
      ),
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String label;
  final int amount;

  const _PriceRow({required this.label, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyles.mediumWhite14.copyWith(color: AppColors.muted),
        ),
        Text(
          '$amount ج',
          style: TextStyles.boldWhite14,
        ),
      ],
    );
  }
}

class _TotalRow extends StatelessWidget {
  final int total;

  const _TotalRow({required this.total});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('الإجمالي', style: TextStyles.boldWhite18),
        Text(
          '$total ج',
          style: TextStyles.boldWhite20.copyWith(
            color: AppColors.primaryGreen,
          ),
        ),
      ],
    );
  }
}

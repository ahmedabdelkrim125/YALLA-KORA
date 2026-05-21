import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/custom_divider.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/section_card.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/title_header.dart';

class BookingInfoSection extends StatelessWidget {
  final String facilityName;
  final String date;
  final String timeRange;
  final String matchType;

  const BookingInfoSection({
    super.key,
    required this.facilityName,
    required this.date,
    required this.timeRange,
    required this.matchType,
  });

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleHeader(title: facilityName),
          CustomDivider(),
          BookingInfoRow(icon: Assets.calendar, label: 'التاريخ:', value: date),
          verticalSpace(context, height: 10),
          BookingInfoRow(
            icon: Assets.timeGrey,
            label: 'الوقت:',
            value: timeRange,
          ),
          verticalSpace(context, height: 10),
          BookingInfoRow(
            icon: Assets.gender,
            label: 'النوع:',
            value: matchType,
          ),
        ],
      ),
    );
  }
}

class BookingInfoRow extends StatelessWidget {
  final String icon;
  final String label;
  final String value;

  const BookingInfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w(context),
      children: [
        SvgPicture.asset(icon),
        Text(label, style: TextStyles.regularMuted14),
        Text(value, style: TextStyles.boldWhite14),
      ],
    );
  }
}

// ── Match details card ────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/utils/date_time_formatter.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/Widgets/details_row.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/data/models/join_match_response.dart' as j;

class MatchDetailsCard extends StatelessWidget {
  const MatchDetailsCard({super.key, required this.match, required this.playersJoined, required this.totalPlayers});
  
  final j.Match match;
  final int playersJoined;
  final int totalPlayers;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      padding: context.responsivePadding(all: 16),
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(16.r(context)),
        border: Border.all(color: Colors.white.withOpacity(0.06), width: 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('تفاصيل التقسيمة', style: TextStyles.boldWhite16),
          verticalSpace(context, height: 16),
          Divider(color: Colors.white.withOpacity(0.08), height: 1),
          verticalSpace(context, height: 16),

          DetailRow(
            icon: Icons.calendar_month_outlined,
            label: 'التاريخ',
            value: '${DateTimeFormatter.dayFromDate(match.date)}، ${DateTimeFormatter.dateToArabic(match.date)}',
          ),
          verticalSpace(context, height: 12),
          DetailRow(
            icon: Icons.access_time_rounded,
            label: 'الوقت',
            value: DateTimeFormatter.timeToArabic12Hour(match.time),
          ),
          verticalSpace(context, height: 12),
          DetailRow(
            icon: Icons.group_outlined,
            label: 'حالة الفريق',
            value: '$playersJoined من $totalPlayers — فاضل ${match.spotsLeft}',
          ),
          verticalSpace(context, height: 12),
          DetailRow(
            icon: Icons.payments_outlined,
            label: 'حصتك',
            value: '${match.pricePerPlayer} ج.م',
            valueColor: AppColors.primaryGreen,
          ),
        ],
      ),
    );
  }
}
// ── Month header ──────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

import '../../../../core/theme/app_colors.dart' show AppColors;

class CalendarMonthHeader extends StatelessWidget {
  final String month;
  const CalendarMonthHeader({super.key, required this.month});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(month, style: TextStyles.boldWhite18),
        const Spacer(),
        const CalendarNavArrow(
          icon: Icons.chevron_left_rounded,
          color: AppColors.muted,
        ),
        horizontalSpace(context, width: 8),
        const CalendarNavArrow(
          icon: Icons.chevron_right_rounded,
          color: Colors.white,
        ),
      ],
    );
  }
}

// ── Calendar nav arrow ────────────────────────────────
class CalendarNavArrow extends StatelessWidget {
  final IconData icon;
  final Color color;
  const CalendarNavArrow({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: color, size: 20);
  }
}

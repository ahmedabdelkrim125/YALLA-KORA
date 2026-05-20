// ── Month header ──────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

import '../../../../core/theme/app_colors.dart' show AppColors;

class CalendarMonthHeader extends StatelessWidget {
  final String month;
  final bool canGoPrevious;
  final VoidCallback onNext;
  final VoidCallback onPrevious;

  const CalendarMonthHeader({
    super.key,
    required this.month,
    required this.canGoPrevious,
    required this.onNext,
    required this.onPrevious
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(month, style: TextStyles.boldWhite18),
        const Spacer(),
        GestureDetector(
          onTap: onPrevious,
          child: CalendarNavArrow(
            icon: Icons.chevron_left_rounded,
            color: canGoPrevious? Colors.white : AppColors.muted,
          ),
        ),
        horizontalSpace(context, width: 8),
        GestureDetector(
          onTap: onNext,
          child: const CalendarNavArrow(
            icon: Icons.chevron_right_rounded,
            color: Colors.white,
          ),
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

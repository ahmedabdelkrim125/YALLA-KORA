// ─────────────────────────────────────────
//  MATCH ROW
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/home/ui/home_screen.dart';
import 'package:yalla_kora/features/home/ui/widgets/book_button.dart';
import 'package:yalla_kora/features/home/ui/widgets/icon_text_row.dart';
import 'package:yalla_kora/features/home/ui/widgets/players_badge.dart';

class MatchRow extends StatelessWidget {
  final MatchModel match;

  const MatchRow({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconText(
                  icon: Assets.timeIcon,
                  text: match.time,
                  textStyle: TextStyles.boldWhite14,
                ),
                const SizedBox(height: 10),
                IconText(
                  icon: Assets.locationIcon,
                  text: match.venue,
                  textStyle: TextStyles.regularGrey12,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    PlayersBadge(count: match.playersNeeded),
                    const SizedBox(width: 8),
                    Text(
                      'حصة الفرد ${match.sharePrice}',
                      style: TextStyles.regularGrey10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          const BookButton(),
        ],
      ),
    );
  }
}
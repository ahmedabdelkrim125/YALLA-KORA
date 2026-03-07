// ─────────────────────────────────────────
//  MATCHES LIST
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/features/home/ui/home_screen.dart';
import 'package:yalla_kora/features/home/ui/widgets/match_row.dart';

class MatchesList extends StatelessWidget {
  final List<MatchModel> matches;

  const MatchesList({super.key, required this.matches});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: matches.length,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 20),
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (_, _) => SizedBox(height: 16),
      itemBuilder: (context, i) {
        return IntrinsicHeight(
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppColors.cardBg,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                Expanded(child: MatchRow(match: matches[i])),
                MatchCardStripe(),
              ],
            ),
          ),
        );
      },
    );
  }
}

// ─────────────────────────────────────────
//  LEFT STRIPE
// ─────────────────────────────────────────
class MatchCardStripe extends StatelessWidget {
  const MatchCardStripe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      decoration: const BoxDecoration(
        color: AppColors.leftStripe,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          bottomLeft: Radius.circular(14),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────
//  MATCHES LIST
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import 'package:yalla_kora/features/home/ui/widgets/match_row.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routes.dart';

class MatchesList extends StatelessWidget {
  final List<MatchModel> matches;
  final int totalMatches;
  final int totalPages;

  const MatchesList({super.key, required this.matches, required this.totalMatches, required this.totalPages});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'كمل التقسيمة',
          iconPath: Assets.handshakeIcon,
          onViewAllTap: () => context.pushNamed(
            Routes.viewAllMatchesScreen,
            arguments: {
              'matches': matches,
              'totalMatches': totalMatches,
              'totalPages': totalPages,
            }
          ),
        ),
        ListView.separated(
          itemCount: matches.length > 3 ? 3 : matches.length,
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
                  border: Border(
                    left: BorderSide(
                      color: AppColors.leftStripe, width: 3
                    ),
                  )
                ),
                child: MatchRow(match: matches[i]),
              ),
            );
          },
        ),
      ],
    );
  }
}
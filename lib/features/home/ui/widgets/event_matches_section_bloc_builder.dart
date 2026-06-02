import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/error_widget.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import 'package:yalla_kora/features/home/logic/event_matches/event_matches_cubit.dart';
import 'package:yalla_kora/features/home/ui/widgets/book_button.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';
import '../../../../core/constants/dummy_data.dart';
import '../../../../core/helper/responsive_extensions.dart';
import 'matches_list.dart';

class EventMatchesSection extends StatelessWidget {
  const EventMatchesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventMatchesCubit, EventMatchesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => _MatchesListSkeleton(matches: dummyMatches,),
          success: (matches, totalMatches, currentPage, totalPages, isLoadingMore, hasError, errorHandler) =>
              MatchesList(matches: matches, totalMatches: totalMatches, totalPages: totalPages,),
          failure: (error) => CustomErrorWidget(
            message: error.apiErrorModel.message,
            onRetry: () => context.read<EventMatchesCubit>().emitEventMatchesStates(),
          ),
        );
      },
    );
  }
}

// loading skeleton للـ matches
class _MatchesListSkeleton extends StatelessWidget {
  const _MatchesListSkeleton({required this.matches});

  final List<MatchModel> matches;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'كمل التقسيمة',
          iconPath: Assets.handshakeIcon,
        ),
        Skeletonizer(
          effect: ShimmerEffect(
            baseColor: AppColors.cardBg2,
            highlightColor: AppColors.primaryGreen,
            duration: const Duration(seconds: 1),
          ),
          child: ListView.separated(
            itemCount: matches.length,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
            separatorBuilder: (_, __) => SizedBox(height: 16.h(context)),
            itemBuilder: (context, i) {
              final match = matches[i];
              return IntrinsicHeight(
                child: MatchSkeleton(match: match),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MatchSkeleton extends StatelessWidget {
  const MatchSkeleton({
    super.key,
    required this.match,
  });

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(match.time, style: TextStyles.boldWhite14),
                  const SizedBox(height: 10),
                  Text(match.field.location.name, style: TextStyles.regularGrey12),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'لاعبين ${match.playersNeeded} تحتاج',
                        style: TextStyles.mediumWhite10,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'حصة الفرد ${match.pricePerPlayer}',
                        style: TextStyles.regularGrey10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            BookButton(match: match,),
          ],
        ),
      ),
    );
  }
}
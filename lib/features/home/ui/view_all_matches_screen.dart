import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import 'package:yalla_kora/features/home/logic/event_matches/event_matches_cubit.dart';
import 'package:yalla_kora/features/home/ui/widgets/custom_app_bar.dart';
import 'package:yalla_kora/features/home/ui/widgets/load_more_footer.dart';
import 'package:yalla_kora/features/home/ui/widgets/match_row.dart';

import '../../../core/theme/app_colors.dart';

class ViewAllMatchesScreen extends StatelessWidget {
  const ViewAllMatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(text: 'جميع المباريات',),
        body: Padding(
          padding: context.responsivePadding(top: 20),
          child: BlocBuilder<EventMatchesCubit, EventMatchesState>(
            builder: (context, state) {
              final currMatches = state.maybeWhen(
                success: (matches, _, __, ___, ____, _____, ______) => matches,
                orElse: () => <MatchModel>[],
              );
              final isLoadingMore = state.maybeWhen(
                success: (_, __,___,____, isLoadingMore, _____, ______) => isLoadingMore,
                orElse: () => false,
              );
              final hasError = state.maybeWhen(
                success: (_, __, ___, ____, _____, hasError, ______) => hasError,
                orElse: () => false,
              );
              final errorMessage = state.maybeWhen(
                success: (_, __, ___, ____, _____, ______, errorHandler) => errorHandler?.apiErrorModel.message,
                orElse: () => null,
              );
              final totalPages = state.maybeWhen(
                success: (_, __, currentPage, totalPages, ___, ____, _____) => totalPages,
                orElse: () => 1,
              );
              final currentPage = state.maybeWhen(
                success: (_, __, currentPage, totalPages, ___, ____, _____) => currentPage,
                orElse: () => 1,
              );
              return ListView.separated(
                itemCount: currMatches.length + 1, // +1 for load more footer
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20),
                physics: BouncingScrollPhysics(),
                separatorBuilder: (_, _) => SizedBox(height: 14.h(context),),
                itemBuilder: (context, i) {
                  if (i == currMatches.length) {
                    if (currentPage >= totalPages) return const SizedBox.shrink();
                    return LoadMoreFooter(
                      isLoading: isLoadingMore,
                      isError: hasError,
                      errorMessage: errorMessage,
                      onLoadMore: () => context.read<EventMatchesCubit>().emitEventMatchesStates(),
                    );
                  }

                  return IntrinsicHeight(
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          color: AppColors.cardBg,
                          borderRadius: BorderRadius.circular(14),
                          border: Border(left: BorderSide(color: AppColors.leftStripe, width: 3),
                        )
                      ), child: MatchRow(match: currMatches[i]),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

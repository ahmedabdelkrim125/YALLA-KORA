import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';

import '../../../../core/networking/api_result.dart';
import '../../data/event_matches/repo/event_matches_repo.dart' show EventMatchesRepo;

part 'event_matches_state.dart';
part 'event_matches_cubit.freezed.dart';

class EventMatchesCubit extends Cubit<EventMatchesState> {
  final EventMatchesRepo _eventMatchesRepo;
  EventMatchesCubit(this._eventMatchesRepo) : super(EventMatchesState.initial());

  int page = 1;

  void emitEventMatchesStates() async {
    final currentMatches = state.maybeWhen(
        success:(data, total, currentPage, totalPages, isLoadingMore, hasError, errorHandler) => data,
        orElse: ()=> <MatchModel>[]);

    final currentTotal = state.maybeWhen(
      success: (data, total, currentPage, totalPages, isLoadingMore, hasError, errorHandler) => total,
      orElse: () => 0,
    );

    final currentTotalPages = state.maybeWhen(
      success: (data, total, currentPage, totalPages, isLoadingMore, hasError, errorHandler) => totalPages,
      orElse: () => 1,
    );

    // to check if i reached the end of pagination or not, if page > totalPages, stop emitting more states
    if (page > currentTotalPages && currentTotalPages != 1) return;

    if (currentMatches.isNotEmpty) {
      // emit loading more
      emit(EventMatchesState.success(currentMatches, totalMatches: currentTotal, currentPage: page, totalPages: currentTotalPages, isLoadingMore: true));
    } else {
      emit(const EventMatchesState.loading());
    }

    final response = await _eventMatchesRepo.getEventMatches(pageNum: page);
    response.when(
      success: (response) {
        final allMatches = [...currentMatches, ...response.data.matches];
        emit(EventMatchesState.success(
          allMatches,
          totalMatches: response.data.pagination.total,
          currentPage:  response.data.pagination.page,
          totalPages:  response.data.pagination.pages
        ));
        page++;
      },
      failure: (errorHandler) {
        if(currentMatches.isNotEmpty){
          // if i have data and i got error while loading more, i will show a snackbar with the error message, and update the state to set hasError to true, and pass the error handler to be used in the retry button in the ui
          emit(EventMatchesState.success(
            currentMatches,
            totalMatches: currentTotal,
            totalPages: currentTotalPages,
            hasError: true,
            errorHandler: errorHandler
          ));
        }else{
          emit(EventMatchesState.failure(errorHandler));
        }
      },
    );
  }

  loadInitialMatches({required List<MatchModel> initMatches, required int totalMatches, required int totalPages}){
    page = 2;
    emit(EventMatchesState.success(
      initMatches,
      totalMatches: totalMatches,
      totalPages:  totalPages
    ));
  }
}

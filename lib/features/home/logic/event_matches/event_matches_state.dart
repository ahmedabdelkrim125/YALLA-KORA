part of 'event_matches_cubit.dart';

@freezed
abstract class EventMatchesState with _$EventMatchesState {
  const factory EventMatchesState.initial() = _Initial;
  const factory EventMatchesState.loading() = EventMatchesLoading;
  const factory EventMatchesState.success(List<MatchModel> data, {
    @Default(0) int totalMatches,
    @Default(1) int currentPage,
    @Default(1) int totalPages,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasError,
    ErrorHandler? errorHandler,
  }) = EventMatchesSuccess;
  const factory EventMatchesState.failure(ErrorHandler error) = EventMatchesError;
}
part of 'event_matches_cubit.dart';

@freezed
abstract class EventMatchesState with _$EventMatchesState {
  const factory EventMatchesState.initial() = _Initial;
  const factory EventMatchesState.loading() = EventMatchesLoading;
  const factory EventMatchesState.success(List<MatchModel> data) = EventMatchesSuccess;
  const factory EventMatchesState.failure(ErrorHandler error) = EventMatchesError;
}
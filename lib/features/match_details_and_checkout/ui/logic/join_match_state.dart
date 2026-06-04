part of 'join_match_cubit.dart';

@freezed
abstract class JoinMatchState with _$JoinMatchState{
  const factory JoinMatchState.initial() = _Initial;
  const factory JoinMatchState.loading() = JoinMatchLoading;
  const factory JoinMatchState.success(JoinMatchResponse joinMatchResponse) = JoinMatchSuccess;
  const factory JoinMatchState.failure(ErrorHandler error) = JoinMatchError;
}
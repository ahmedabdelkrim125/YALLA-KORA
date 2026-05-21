part of 'available_time_cubit.dart';

@freezed
abstract class AvailableTimeState with _$AvailableTimeState {
  const factory AvailableTimeState.initial() = _Initial;
  const factory AvailableTimeState.loading() = AvailableTimeLoading;
  const factory AvailableTimeState.success(AvailableTimeModel data) = AvailableTimeSuccess;
  const factory AvailableTimeState.failure(ErrorHandler error) = AvailableTimeError;
}

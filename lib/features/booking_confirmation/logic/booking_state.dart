part of 'booking_cubit.dart';

@freezed
abstract class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;
  const factory BookingState.loading() = BookingLoading;
  const factory BookingState.success(BookingData response) = BookingSuccess;
  const factory BookingState.failure(ErrorHandler error) = BookingFailure;
}
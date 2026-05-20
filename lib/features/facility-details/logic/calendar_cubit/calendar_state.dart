// calendar_state.dart
part of 'calendar_cubit.dart';

@freezed
abstract class CalendarState with _$CalendarState {
  const factory CalendarState({
    required List<DayModel> days,
    required DayModel selectedDay,
    required int currentMonth,
    required int currentYear,
    required String selectedDateFormatted,
  }) = _CalendarState;
}
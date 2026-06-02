import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:yalla_kora/core/helper/helper_functions/calendar_helper.dart';
import 'package:yalla_kora/features/facility-details/data/model/day_model.dart';

part 'calendar_state.dart';
part 'calendar_cubit.freezed.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(_buildInitialState());

  static int _getTodayIndex(List<DayModel> days) {
    final now = DateTime.now();

    final index = days.indexWhere(
          (day) =>
      day.date.day == now.day &&
          day.date.month == now.month &&
          day.date.year == now.year,
    );

    return index != -1 ? index : 0;
  }

  static CalendarState _buildInitialState() {
    final now = DateTime.now();
    final days = CalendarHelper.generateMonthDays(
        year: now.year,
        month: now.month
    );

    final selectedDayIndex = _getTodayIndex(days);

    final updatedDays = List<DayModel>.from(days);
    updatedDays[selectedDayIndex] = days[selectedDayIndex].copyWith(isSelected: true);

    return CalendarState(
      days: updatedDays,
      selectedDay: updatedDays[selectedDayIndex],
      currentMonth: now.month,
      currentYear: now.year,
      selectedDateFormatted: DateFormat('yyyy-MM-dd').format(updatedDays[selectedDayIndex].date),
    );
  }

  void selectDay(DayModel day) {
    final updatedDays = state.days.map((d) {
      return d.copyWith(isSelected: d.date == day.date);
    }).toList();

    final selectedDay = updatedDays.firstWhere(
          (d) => d.date == day.date,
    );

    emit(state.copyWith(
      days: updatedDays,
      selectedDay: selectedDay,
      selectedDateFormatted: DateFormat('yyyy-MM-dd').format(selectedDay.date),
    ));
  }

  void nextMonth() {
    int month = state.currentMonth + 1;
    int year = state.currentYear;
    if (month > 12) {
      month = 1;
      year++;
    }
    _changeMonth(month: month, year: year);
  }

  void previousMonth(){
    if(!canGoPrevious) return; // to don't allow to go back to the previous month of the current month

    int month = state.currentMonth - 1;
    int year = state.currentYear;
    if(month < 1){
      month = 12;
      year--;
    }
    _changeMonth(month: month, year: year);
  }

  void _changeMonth({required int month, required int year}){
    final days = CalendarHelper.generateMonthDays(year: year, month: month);

    final now = DateTime.now();

    final selectedDayIndex =
      (month == now.month && year == now.year)
        ? _getTodayIndex(days)
        : 0;

    final updatedDays = List<DayModel>.from(days);
    updatedDays[selectedDayIndex] = updatedDays[selectedDayIndex].copyWith(isSelected: true);
    final selectedDay = updatedDays[selectedDayIndex];

    emit(state.copyWith(
      days: updatedDays,
      selectedDay: selectedDay,
      currentMonth: month,
      currentYear: year,
      selectedDateFormatted:
      DateFormat('yyyy-MM-dd').format(selectedDay.date),
    ));
  }

  String get monthYearLabel => CalendarHelper.getMonthYear(DateTime(state.currentYear, state.currentMonth));

  bool get canGoPrevious {
    final now = DateTime.now();
    return !(state.currentYear == now.year && state.currentMonth == now.month);
  }

  String get selectedTimeRange{
    final date = state.selectedDay;
    return '${date.dayName}, ${date.dayNumber} $monthYearLabel';
  }
}
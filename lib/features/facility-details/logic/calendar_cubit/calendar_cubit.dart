import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:yalla_kora/core/helper/helper_functions/calendar_helper.dart';
import 'package:yalla_kora/features/facility-details/data/model/day_model.dart';

part 'calendar_state.dart';
part 'calendar_cubit.freezed.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(_buildInitialState());

  static CalendarState _buildInitialState() {
    final now = DateTime.now();
    final days = CalendarHelper.generateMonthDays(
        year: now.year,
        month: now.month
    );

    final todayIndex = days.indexWhere(
          (day) =>
      day.date.day == now.day &&
          day.date.month == now.month &&
          day.date.year == now.year,
    );

    final selectedDay = days[todayIndex != -1 ? todayIndex : 0];
    selectedDay.isSelected = true;

    return CalendarState(
      days: days,
      selectedDay: selectedDay,
      currentMonth: now.month,
      currentYear: now.year,
      selectedDateFormatted: DateFormat('yyyy-MM-dd').format(selectedDay.date),
    );
  }

  void selectDay(DayModel day) {
    final updatedDays = state.days.map((d) {
      d.isSelected = d.date == day.date;
      return d;
    }).toList();

    emit(state.copyWith(
      days: updatedDays,
      selectedDay: day,
      selectedDateFormatted: DateFormat('yyyy-MM-dd').format(day.date),
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
      month = 1;
      year--;
    }
    _changeMonth(month: month, year: year);
  }

  void _changeMonth({required int month, required int year}){
    final days = CalendarHelper.generateMonthDays(year: year, month: month);

    final selectedDay = days.first;
    selectedDay.isSelected = true;

    emit(state.copyWith(
      days: days,
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
    final date = state.days.firstWhere((day) => day.isSelected);
    return '${date.dayName}, ${date.dayNumber} $monthYearLabel';
  }
}
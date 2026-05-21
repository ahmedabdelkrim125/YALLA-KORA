import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:yalla_kora/features/facility-details/data/model/day_model.dart';

class CalendarHelper {
  static Future<void> init() async {
    await initializeDateFormatting('ar');
  }

  static String getMonthYear(DateTime date){
    String monthYearDate = DateFormat('MMMM yyyy', 'ar').format(date);
    return monthYearDate;
  }

  static List<DayModel> generateMonthDays({required int year, required int month}) {
    final daysInMonth = DateTime(year, month + 1, 0).day;
    return List.generate(daysInMonth, (i){
      final date = DateTime(year, month, i + 1);
      return DayModel(
        date: date,
        dayName: DateFormat('EEE', 'ar').format(date),
        dayNumber: DateFormat('dd', 'ar').format(date),
      );
    });
  }
}
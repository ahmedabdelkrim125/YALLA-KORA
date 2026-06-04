import 'package:intl/intl.dart';

class DateTimeFormatter {
  DateTimeFormatter._(); // Private constructor to prevent instantiation (don't need to create an instance of this class)

  static String timeToArabic12Hour(String time) {
    final parsedTime = DateFormat('HH:mm').parse(time);
    return DateFormat('h:mm a', 'ar').format(parsedTime);
  }

  static String dateFromArabicDate(String time) {
    final arabicFormatter = DateFormat('EEEE, d MMMM y', 'ar').parse(time);
    return DateFormat('yyyy-MM-dd').format(arabicFormatter);
  }
  static String dateToArabic(String date) {
    final parsedDate = DateTime.parse(date);

    return DateFormat(
      'd MMMM yyyy',
      'ar',
    ).format(parsedDate);
  }

  static String dayFromDate(String date) {
    final parsedDate = DateTime.parse(date);
    if (parsedDate.day == DateTime.now().day) {
      return 'اليوم';
    }
    return DateFormat('EEEE', 'ar').format(parsedDate);
  }
}
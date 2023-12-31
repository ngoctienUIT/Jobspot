import 'package:intl/intl.dart';
import 'package:jobspot/src/core/config/localization/app_local.dart';

class DateTimeUtils {
  DateTimeUtils._();

  static String formatDMY(DateTime date) =>
      DateFormat('dd/MM/yyyy').format(date);

  static String formatCVTime(DateTime date) =>
      DateFormat("dd MMM yyyy 'at' hh:mm a").format(date);

  static String formatMonthYear(DateTime date) =>
      DateFormat("MMM yyyy").format(date);

  static String daysLeft(DateTime date) {
    final duration = date.difference(DateTime.now());
    if (duration.inDays > 0) {
      return AppLocal.text.view_job_page_days_left(duration.inDays);
    }
    if (duration.inHours > 0) {
      return AppLocal.text.view_job_page_hours_left(duration.inHours);
    }
    if (duration.inMinutes > 0) {
      return AppLocal.text.view_job_page_minutes_left(duration.inMinutes);
    }
    if (duration.inSeconds > 0) {
      return AppLocal.text.view_job_page_seconds_left(duration.inSeconds);
    }
    return "";
  }

  static String fromDateToDate(DateTime date1, DateTime? date2) {
    final formater = DateFormat("MMM yyyy");
    Duration time = (date2 ?? DateTime.now()).difference(date1);
    String date =
        "${formater.format(date1)} - ${date2 != null ? formater.format(date2) : AppLocal.text.now} •";
    if (time.inDays ~/ 365 > 0) {
      return "$date ${time.inDays ~/ 365} ${AppLocal.text.year}";
    } else {
      return "$date ${time.inDays ~/ 30} ${AppLocal.text.month}";
    }
  }
}

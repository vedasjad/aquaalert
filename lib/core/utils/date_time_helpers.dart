import 'package:intl/intl.dart';

String formatDateTimeFromISO(String iso8601String) {
  DateTime dateTime = DateTime.parse(iso8601String);

  // Format the time in 12-hour format with AM/PM
  String formattedTime = DateFormat('h:mm a').format(dateTime);

  // Format the date in '2 May 2024' format
  String formattedDate = DateFormat('d MMMM yyyy').format(dateTime);
  if (dateTime.day == DateTime.now().day &&
      dateTime.month == DateTime.now().month &&
      dateTime.year == DateTime.now().year) {
    formattedDate = "Today";
  }

  // Combine both date and time
  return '$formattedTime, $formattedDate';
}

String formatTimeFromDateTime(DateTime dateTime) {
  // Format the time in 12-hour format with AM/PM
  String formattedTime = DateFormat('h:mm a').format(dateTime);

  // Combine both date and time
  return formattedTime;
}

String formatDateFromDateTime(DateTime dateTime) {
  // Format the date in '2 May 2024' format
  String formattedDate = DateFormat('d MMMM yyyy').format(dateTime);

  // Combine both date and time
  return formattedDate;
}

String formatMonthFromDateTime(DateTime dateTime) {
  // Format the date in '2 May 2024' format
  String formattedDate = DateFormat('MMMM yyyy').format(dateTime);

  // Combine both date and time
  return formattedDate;
}

import 'package:intl/intl.dart';

String formatDateTimeFromISO(String iso8601String) {
  DateTime dateTime = DateTime.parse(iso8601String);

  // Format the time in 12-hour format with AM/PM
  String formattedTime = DateFormat('h:mm a').format(dateTime);

  // Format the date in '2 May 2024' format
  String formattedDate = DateFormat('d MMMM yyyy').format(dateTime);

  // Combine both date and time
  return '$formattedTime, $formattedDate';
}

String formatDateFromDateTime(DateTime dateTime) {
  // Format the date in '2 May 2024' format
  String formattedDate = DateFormat('d MMMM yyyy').format(dateTime);

  // Combine both date and time
  return formattedDate;
}

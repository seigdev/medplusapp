import 'package:intl/intl.dart';

final dateFormat = DateFormat('dd/MM/yyyy');

String getDayWithPosition(DateTime date) {
  int day = date.day;
  String suffix = 'th';
  if (day == 1 || day == 21 || day == 31) {
    suffix = 'st';
  } else if (day == 2 || day == 22) {
    suffix = 'nd';
  } else if (day == 3 || day == 23) {
    suffix = 'rd';
  }
  return '$day$suffix';
}

String formatDay(DateTime date) {
  DateTime now = DateTime.now();
  DateTime yesterday = DateTime.now().subtract(const Duration(days: 1));

  if (date.year == now.year && date.month == now.month && date.day == now.day) {
    return 'Today';
  } else if (date.year == yesterday.year &&
      date.month == yesterday.month &&
      date.day == yesterday.day) {
    return 'Yesterday';
  } else {
    String month = DateFormat('MMMM').format(date);
    String year = DateFormat('y').format(date);
    return '${getDayWithPosition(date)} $month $year';
  }
}

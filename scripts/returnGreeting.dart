// ignore_for_file: file_names

String returnGreeting() {
  DateTime now = DateTime.now();
  int hour = now.hour;

  if (hour < 12 && hour > 5) {
    return "Morning";
  } else if (hour > 12 && hour < 16) {
    return "Afternoon";
  } else if (hour > 16 && hour < 20) {
    return "Evening";
  } else {
    return "Night";
  }
}

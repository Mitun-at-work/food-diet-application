// ignore_for_file: file_names

import 'package:fooddiets/globals/globals.dart';

void main() {
  var date = DateTime.now().day;
  if (date != today) {
    today = date;
    hydrationProgress = 0;
  }
}

// ignore_for_file: non_constant_identifier_names, file_names
import 'package:fooddiets/globals/globals.dart' as globals;

void DetermineCalorie() {
  globals.height = globals.height / 10;
  globals.bmi = globals.wieght / (globals.height * globals.height);
  if (globals.bmi < 18) {
    globals.ishealthy = false;
    globals.healthStatus = "UW";
  } else if (globals.bmi < 24) {
    globals.ishealthy = true;
    globals.healthStatus = "NW";
  }
  globals.requiredCalories =
      ((10 * globals.wieght) + (6.25 * globals.height) - (5 * globals.age)) + 5;
}

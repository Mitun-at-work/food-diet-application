import 'package:flutter/material.dart';
import 'package:fooddiets/globals/theme.dart';
import 'package:fooddiets/widgets/healthdatacard.dart';

class HealthData extends StatelessWidget {
  const HealthData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 20,
      ),
      color: lightorange,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Mass Index",
              style: TextStyle(
                color: bgbrowntext,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),

          HealthDataCard(
            suffix: "cm",
            val: "193",
          ),
          HealthDataCard(
            suffix: "kg",
            val: "55",
          ),
          HealthDataCard(
            suffix: "Age",
            val: "19",
          ),
          HealthDataCard(
            suffix: "BMI",
            val: "8",
          ),

          // Main Widget
        ],
      ),
    );
  }
}

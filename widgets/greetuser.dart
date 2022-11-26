import 'package:flutter/material.dart';
import 'package:fooddiets/scripts/returnGreeting.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Good ${returnGreeting()}",
      style: const TextStyle(
        fontSize: 30,
        letterSpacing: 0,
      ),
    );
  }
}

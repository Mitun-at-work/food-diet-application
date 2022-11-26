import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  final String name;
  const UserName({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Mr.",
          style: TextStyle(
            fontSize: 29,
          ),
        ),
        Text(
          " $name",
          style: const TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.bold,
            letterSpacing: -1,
          ),
        ),
      ],
    );
  }
}

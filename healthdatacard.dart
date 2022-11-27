import 'package:flutter/material.dart';
import 'package:fooddiets/globals/theme.dart';

class HealthDataCard extends StatelessWidget {
  const HealthDataCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              right: 10,
            ),
            child: const Text(
              "193",
              style: TextStyle(
                color: bgbrowntext,
                fontSize: 25,
              ),
            ),
          ),
          const Text(
            "cm",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}

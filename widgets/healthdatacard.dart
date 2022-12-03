import 'package:flutter/material.dart';
import 'package:fooddiets/globals/theme.dart';

// ignore: must_be_immutable
class HealthDataCard extends StatelessWidget {
  String val;
  String suffix;
  HealthDataCard({
    super.key,
    required this.val,
    required this.suffix,
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
            child: Text(
              val,
              style: const TextStyle(
                color: bgbrowntext,
                fontSize: 25,
              ),
            ),
          ),
          Text(
            suffix,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}

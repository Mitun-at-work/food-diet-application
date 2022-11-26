import 'package:flutter/material.dart';
import 'package:fooddiets/globals/theme.dart';

class HydrationContainer extends StatelessWidget {
  const HydrationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgblue,
      height: 180,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 10,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  "Water",
                  style: TextStyle(
                    color: bluetext,
                    fontSize: 20,
                  ),
                ),
                Icon(
                  Icons.water_drop_outlined,
                  color: bluetext,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

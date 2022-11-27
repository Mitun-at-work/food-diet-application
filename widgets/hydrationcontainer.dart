import 'package:flutter/material.dart';
import 'package:fooddiets/globals/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HydrationContainer extends StatelessWidget {
  const HydrationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Hydration();
  }
}

class Hydration extends StatefulWidget {
  const Hydration({
    Key? key,
  }) : super(key: key);

  @override
  State<Hydration> createState() => _HydrationState();
}

class _HydrationState extends State<Hydration> {
  String a = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgblue,
      height: 250,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
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
                    fontWeight: FontWeight.bold,
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
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              child: CircularPercentIndicator(
                radius: 60.0,
                animation: true,
                animationDuration: 2000,
                lineWidth: 5.0,
                percent: .01,
                center: const Text(
                  "2 Litres",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: bluetext,
                    fontSize: 20.0,
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: const Color.fromRGBO(
                  194,
                  216,
                  237,
                  1,
                ),
                progressColor: const Color.fromRGBO(
                  31,
                  91,
                  113,
                  1,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                a,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(
                    31,
                    91,
                    113,
                    1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

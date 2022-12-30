import 'package:flutter/material.dart';
import 'package:fooddiets/globals/globals.dart';
import 'package:fooddiets/globals/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HydrationContainer extends StatelessWidget {
  const HydrationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hydration();
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
  String sentence = "Hydrate frequently";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            if (hydrationProgress + 500 < target) {
              hydrationProgress += 500;
            } else {
              hydrationProgress = target;
              sentence = "Goals Achieved";
            }
            if (hydrationProgress == 1000) {
              sentence = "Quite Good 💖";
            } else if (hydrationProgress == 1500) {
              sentence = "Almost There";
            }
          },
        );
      },
      child: Container(
        color: bgblue,
        width: 180,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
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
                  percent: hydrationProgress / hydrationTarget,
                  center: Text(
                    "${hydrationTarget / 1000} Litres",
                    style: const TextStyle(
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
                  sentence,
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
      ),
    );
  }
}

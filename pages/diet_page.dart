// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fooddiets/pages/alarm_page.dart';
import 'package:fooddiets/widgets/breakfast_tile.dart';
import 'package:fooddiets/widgets/dinner_tile.dart';
import 'package:fooddiets/widgets/lunch_tile.dart';
import 'package:fooddiets/widgets/snack_tile.dart';
import 'package:fooddiets/widgets/appbar.dart';

class MentalHealth extends StatelessWidget {
  const MentalHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 40,
                left: 25,
              ),
              child: const TopBar(),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 35,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 25,
                    ),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Fire Up your Diet\nMitun Suresh",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AlarmPage(),
                            ));
                      },
                      icon: const Icon(
                        Icons.notifications_outlined,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              children: const [
                BreakfastTile(),
                LunchTile(),
                DinnerTile(),
                SnackTile(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

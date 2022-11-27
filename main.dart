import 'package:flutter/material.dart';
import 'package:fooddiets/globals/theme.dart';
import 'package:fooddiets/widgets/appbar.dart';
import 'package:fooddiets/widgets/greetuser.dart';
import 'package:fooddiets/widgets/username.dart';
import 'package:fooddiets/widgets/hydrationcontainer.dart';
import 'package:fooddiets/widgets/detaileddiet.dart';
import 'package:fooddiets/widgets/userdata.dart';
import 'package:fooddiets/widgets/mentalhealthcontainer.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(fontFamily: 'Axiforma'),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1,
          backgroundColor: white,
          iconSize: 25,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "Diet",
              icon: Icon(
                Icons.food_bank,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 22,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const TopBar(),
                Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      const Greeting(),
                      const UserName(
                        name: "Mitun",
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: StaggeredGrid.count(
                          mainAxisSpacing: 20,
                          crossAxisCount: 2,
                          children: const [
                            HydrationContainer(),
                            DietPlan(),
                            UserDetails(),
                            MentalHealthContainer(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

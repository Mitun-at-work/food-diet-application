import 'package:flutter/material.dart';
import 'package:fooddiets/globals/theme.dart';
import 'package:fooddiets/widgets/appbar.dart';
import 'package:fooddiets/widgets/greetuser.dart';
import 'package:fooddiets/widgets/username.dart';
import 'package:fooddiets/widgets/hydrationcontainer.dart';
import 'package:fooddiets/widgets/detaileddiet.dart';
import 'package:fooddiets/widgets/userdata.dart';

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Diet",
              icon: Icon(Icons.food_bank),
            ),
          ],
        ),
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
                  margin: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      const Greeting(),
                      const UserName(
                        name: "Mitun",
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                HydrationContainer(),
                                DietPlan(),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 20,
                              ),
                              child: Row(
                                children: const [
                                  DietPlan(),
                                  UserDetails(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
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

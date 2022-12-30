import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fooddiets/widgets/appbar.dart';
import 'package:fooddiets/widgets/greetuser.dart';
import 'package:fooddiets/widgets/username.dart';
import 'package:fooddiets/widgets/hydrationcontainer.dart';
import 'package:fooddiets/widgets/detailed_diet_card.dart';
import 'package:fooddiets/widgets/healthdata.dart';
import 'package:fooddiets/widgets/mentalhealthcontainer.dart';

// var fetch = ShareP().getInstance();

void main() => runApp(
      MaterialApp(
        theme: ThemeData(fontFamily: 'Axiforma'),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 25,
          items: const [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.cake_sharp,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.water_drop_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.trending_up_outlined,
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
                            HealthData(),
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

import 'package:flutter/material.dart';
import 'package:fooddiets/widgets/profilecard.dart';
import 'package:fooddiets/globals/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        25,
                      ),
                    ),
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "resources/profile.jpg",
                      ),
                    ),
                  ),
                ),

                // User Details card

                const ProfileCard(
                  bgcolr: profBluebg,
                  field: "Name",
                  icon: Icons.person_outline,
                  iconcolor: profblueicon,
                  value: "Mitun Suresh",
                ),

                const ProfileCard(
                  bgcolr: profgreenbg,
                  field: "Gender",
                  icon: Icons.boy_sharp,
                  iconcolor: profgreenicon,
                  value: "Male",
                ),

                const ProfileCard(
                  bgcolr: proforangebg,
                  field: "Height",
                  icon: Icons.percent_rounded,
                  iconcolor: proforangeicon,
                  value: "153 cm",
                ),

                const ProfileCard(
                  bgcolr: profskybg,
                  field: "Age",
                  icon: Icons.sailing_rounded,
                  iconcolor: profskyicon,
                  value: "20 years",
                ),

                const ProfileCard(
                  bgcolr: profredbg,
                  field: "Weight",
                  icon: Icons.travel_explore,
                  iconcolor: profredicon,
                  value: "50 kgs",
                ),

                const ProfileCard(
                  bgcolr: profyellowbg,
                  field: "BMI",
                  icon: Icons.alarm,
                  iconcolor: preofyellowicon,
                  value: "18",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

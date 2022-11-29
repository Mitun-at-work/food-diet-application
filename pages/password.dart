import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddiets/widgets/greetuser.dart';
import 'package:fooddiets/widgets/otp_container.dart';
import 'package:fooddiets/widgets/username.dart';
import 'package:lottie/lottie.dart';
import 'package:fooddiets/globals/globals.dart' as globals;
import 'package:fooddiets/widgets/appbar.dart';
import 'package:fooddiets/globals/theme.dart';

class SetOtp extends StatefulWidget {
  const SetOtp({
    super.key,
  });

  @override
  State<SetOtp> createState() => _SetOtpState();
}

class _SetOtpState extends State<SetOtp> {
  String assetImg = "lock.json";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const TopBar(),
            const Greeting(),
            const UserName(
              name: "Mitun",
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Otp(
                      index: 0,
                    ),
                    Otp(
                      index: 1,
                    ),
                    Otp(
                      index: 2,
                    ),
                    Otp(
                      index: 3,
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(
                10,
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: IconButton(
                onPressed: () {
                  print(globals.isEntered);
                  print(globals.otp);
                  // Check the globals
                  bool isFilled = true;

                  for (int i = 0; i < globals.isEntered.length; i++) {
                    if (globals.isEntered[i] == false) {
                      isFilled = false;
                      break;
                    }
                  }
                  if (isFilled) {
                    bool isLoged = true;
                    for (int i = 0; i < globals.otp.length - 1; i++) {
                      if (globals.otp[i] != globals.passkey[i]) {
                        isLoged = false;
                        break;
                      }
                    }
                    if (isLoged) {
                      setState(() {
                        print("Good Bro");
                      });
                      print(
                        "Verified",
                      );
                    } else {
                      print(
                        "Not Verifired",
                      );
                    }
                  } else {
                    print(
                      "Not Entered",
                    );
                  }
                },
                icon: const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
              ),
            ),

            // Lottie.asset(
            //   "resources/$assetImg",
            //   repeat: false,
            // ),
          ],
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        18,
      ),
      margin: const EdgeInsets.only(
        top: 35,
        left: 13,
        right: 13,
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                child: const Icon(
                  CupertinoIcons.tornado,
                  color: orange,
                ),
              ),
              const Text(
                "Healup",
                style: TextStyle(
                  color: orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -2,
                ),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(
              "resources/profile.jpg",
            ),
          ),
        ],
      ),
    );
  }
}

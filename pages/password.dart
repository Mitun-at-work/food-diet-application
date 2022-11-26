import 'package:flutter/material.dart';
import 'package:fooddiets/widgets/otp_container.dart';
import 'package:lottie/lottie.dart';
import 'package:fooddiets/globals/globals.dart' as globals;

class SetOtp extends StatefulWidget {
  const SetOtp({
    super.key,
  });

  @override
  State<SetOtp> createState() => _SetOtpState();
}

class _SetOtpState extends State<SetOtp> {
  String assetImg = "password.json";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 255, 1),
      body: Column(
        children: [
          const Text(
            "Protect Your App with AppLock",
            style: TextStyle(fontFamily: "Axiforma"),
          ),
          Lottie.asset(
            "resources/$assetImg",
            repeat: true,
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
                  )
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
                      assetImg = "pass.json";
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
          )
        ],
      ),
    );
  }
}

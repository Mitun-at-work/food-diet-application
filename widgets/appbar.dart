import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddiets/pages/profilescreen.dart';

import '../globals/theme.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileScreen(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 35,
          horizontal: 13,
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
      ),
    );
  }
}

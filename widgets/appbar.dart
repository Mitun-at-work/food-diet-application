import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddiets/globals/theme.dart';
import 'package:fooddiets/pages/diet_page.dart';

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
          MaterialPageRoute(builder: (context) => const MentalHealth()),
        );
      },
      child: Container(
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
      ),
    );
  }
}

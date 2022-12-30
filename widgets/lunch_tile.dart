import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LunchTile extends StatefulWidget {
  const LunchTile({super.key});

  @override
  State<LunchTile> createState() => _LunchTileState();
}

class _LunchTileState extends State<LunchTile> {
  IconData icon = CupertinoIcons.tornado;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        setState(() {
          //
          icon = Icons.done;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(
          25,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 178, 142, 231),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "BreakFast",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 29,
                  ),
                ],
              ),
            ),
            const Text(
              "512 Cal",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                letterSpacing: -1,
              ),
            ),
            const Text(
              "2 x Dosa",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: -1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

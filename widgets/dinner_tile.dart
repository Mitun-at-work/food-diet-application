import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DinnerTile extends StatefulWidget {
  const DinnerTile({super.key});

  @override
  State<DinnerTile> createState() => _DinnerTileState();
}

class _DinnerTileState extends State<DinnerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        25,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      width: 180,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 176, 142, 231),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Dinner",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  CupertinoIcons.tornado,
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
    );
  }
}

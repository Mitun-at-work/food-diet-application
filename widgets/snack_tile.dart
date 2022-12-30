import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackTile extends StatefulWidget {
  const SnackTile({super.key});

  @override
  State<SnackTile> createState() => _SnackTileState();
}

class _SnackTileState extends State<SnackTile> {
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
        color: Color.fromARGB(255, 231, 142, 194),
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
                  "Snack",
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
        ],
      ),
    );
  }
}

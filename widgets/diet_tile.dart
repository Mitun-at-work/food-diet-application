import 'package:flutter/material.dart';

class DietTile extends StatelessWidget {
  const DietTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        20,
      ),
      padding: const EdgeInsets.all(
        20,
      ),
      height: 180,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.green[300],
        borderRadius: const BorderRadius.all(
          Radius.circular(
            30,
          ),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "resources/profile.jpg",
            ),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              25,
            ),
          ),
        ),
      ),
    );
  }
}

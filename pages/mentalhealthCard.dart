import 'package:flutter/material.dart';
import 'package:fooddiets/widgets/emojiContainer.dart';

class MentalHealth extends StatelessWidget {
  const MentalHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                top: 150,
              ),
              child: const Text(
                "How do you feel today !?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 80,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  EmojiContainer(
                    emoji: "☺️",
                    index: 1,
                  ),
                  EmojiContainer(
                    emoji: "😄",
                    index: 2,
                  ),
                  EmojiContainer(
                    emoji: "😡",
                    index: 3,
                  ),
                  EmojiContainer(
                    emoji: "👿",
                    index: 4,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 50,
              ),
              child: TextButton(
                onPressed: () {
                  //
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 2,
                ),
                child: const Text(
                  "Record Response",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

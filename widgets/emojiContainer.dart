// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class EmojiContainer extends StatelessWidget {
  String emoji;
  EmojiContainer({
    super.key,
    required this.emoji,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        10,
      ),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Text(
        emoji,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}

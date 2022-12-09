// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';

class EmojiContainer extends StatefulWidget {
  String emoji;
  int index;
  EmojiContainer({
    super.key,
    required this.emoji,
    required this.index,
  });

  @override
  State<EmojiContainer> createState() => _EmojiContainerState();
}

class _EmojiContainerState extends State<EmojiContainer> {
  var bg = Colors.grey[200];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            if (1 == 1) {
              if (widget.index == 1) {
                bg = Colors.green;
              } else if (widget.index == 2) {
                bg = Colors.blue;
              } else if (widget.index == 3) {
                bg = Colors.yellow;
              } else if (widget.index == 4) {
                bg = Colors.purple;
              }
            }
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(
          15,
        ),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              50,
            ),
          ),
        ),
        child: Text(
          widget.emoji,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

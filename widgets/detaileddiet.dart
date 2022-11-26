import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddiets/globals/theme.dart';

class DietPlan extends StatelessWidget {
  const DietPlan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        left: 10,
      ),
      height: 150,
      width: 158,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Icon(
                CupertinoIcons.wrench_fill,
                color: orange,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.right_chevron,
                  size: 15,
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                child: const Text(
                  "View Detailed plan",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

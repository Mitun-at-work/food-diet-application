import 'package:flutter/material.dart';
import 'package:fooddiets/pages/alarm_page.dart';

class MentalHealthContainer extends StatelessWidget {
  const MentalHealthContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 10,
            ),
            child: const Text(
              "How do you feel today ?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 15,
              bottom: 10,
            ),
            padding: const EdgeInsets.all(
              10,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  15,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "💫",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      //
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AlarmPage()));
                    },
                    icon: const Icon(
                      Icons.arrow_right_alt,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

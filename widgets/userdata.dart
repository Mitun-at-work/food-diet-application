import 'package:flutter/material.dart';
import 'package:fooddiets/globals/theme.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      color: lightorange,
      width: 170,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                "BMI",
                style: TextStyle(
                  color: bgbrowntext,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Icon(
                Icons.health_and_safety_outlined,
                color: bgbrowntext,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: const Text(
                    "193",
                    style: TextStyle(
                      color: bgbrowntext,
                      fontSize: 25,
                    ),
                  ),
                ),
                const Text(
                  "cm",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          // Main Widget
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Template Widget
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: const Text(
                        "55",
                        style: TextStyle(
                          color: bgbrowntext,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const Text(
                      "kg",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Template Widget
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: const Text(
                        "10",
                        style: TextStyle(
                          color: bgbrowntext,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const Text(
                      "years",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Template Widget
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: const Text(
                        "55",
                        style: TextStyle(
                          color: bgbrowntext,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const Text(
                      "kg",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

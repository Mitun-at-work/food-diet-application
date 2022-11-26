import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final IconData icon;

  final String field;
  final String value;
  final Color bgcolr;
  final Color iconcolor;

  const ProfileCard({
    super.key,
    required this.icon,
    required this.field,
    required this.value,
    required this.bgcolr,
    required this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                25,
              ),
            ),
          ),
          margin: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: Container(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 15,
              left: 10,
              right: 10,
            ),
            child:
                // Details inside a container
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Icon
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: bgcolr,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            15,
                          ),
                        ),
                      ),
                      child: Icon(
                        icon,
                        color: iconcolor,
                      ),
                    ),

                    //Field
                    Container(
                      margin: const EdgeInsets.only(
                        left: 25,
                      ),
                      child: Text(
                        field,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  value,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Divider Horizontal container
        Container(
          margin: const EdgeInsets.all(
            1,
          ),
          color: Colors.black12,
          width: double.infinity,
          height: 1,
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddiets/globals/globals.dart';

class UpdateDetails extends StatelessWidget {
  final String field;
  // ignore: prefer_typing_uninitialized_variables
  var nextpage, target;
  Color bgcolor, textcolor;
  UpdateDetails({
    super.key,
    required this.field,
    required this.nextpage,
    required this.bgcolor,
    required this.textcolor,
    required this.target,
  });

  @override
  Widget build(BuildContext context) {
    int inputlimit = 2;
    if (field == "Height") {
      inputlimit += 1;
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  top: 110,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.tornado,
                      color: textcolor,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: const TitleText(),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 65,
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: const Text(
                        "Got Some updates dont'you ?",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                padding: const EdgeInsets.all(
                  35,
                ),
                child: TextField(
                  onSubmitted: (value) {
                    target = value;
                    if (field == height) {
                    } else if (field == wieght) {
                    } else if (field == age) {}
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(inputlimit),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  style: TextStyle(
                    color: textcolor,
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Updated $field",
                    hintStyle: TextStyle(
                      color: textcolor,
                      fontSize: 15,
                    ),
                    prefixStyle: TextStyle(
                      color: textcolor,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: textcolor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: textcolor,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 80,
                ),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: textcolor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  color: bgcolor,
                  onPressed: () {
                    // Update Function
                    if (wieght != Null) {
                      return;
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => nextpage,
                        ),
                      );
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_right,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TitleText extends StatefulWidget {
  const TitleText({super.key});

  @override
  State<TitleText> createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "HealUp",
      style: TextStyle(
        color: Colors.red,
        fontSize: 18,
        letterSpacing: -1,
      ),
    );
  }
}

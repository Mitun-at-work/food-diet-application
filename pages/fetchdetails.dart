import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddiets/globals/globals.dart';

class FetchDetails extends StatelessWidget {
  String field;
  // ignore: prefer_typing_uninitialized_variables
  var nextpage;
  Color bgcolor, textcolor;
  FetchDetails({
    super.key,
    required this.field,
    required this.nextpage,
    required this.bgcolor,
    required this.textcolor,
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
                      child: Text(
                        "HealUp",
                        style: TextStyle(
                          color: textcolor,
                          fontSize: 18,
                          letterSpacing: -1,
                        ),
                      ),
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
                    Text(
                      "Tell us",
                      style: TextStyle(
                        wordSpacing: -1,
                        color: textcolor,
                        fontSize: 28,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "your ",
                          style: TextStyle(
                            wordSpacing: -1,
                            color: textcolor,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          field,
                          style: TextStyle(
                            wordSpacing: -1,
                            color: textcolor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
                    wieght = value;
                    print(wieght);
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
                    hintText: field,
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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddiets/globals/globals.dart' as globals;
import 'package:fooddiets/globals/theme.dart' as theme;

// ignore: must_be_immutable
class Otp extends StatelessWidget {
  int index;
  Otp({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      color: theme.bgcard,
      child: TextFormField(
        onFieldSubmitted: (value) {
          globals.otp.add(value);
        },
        onChanged: (value) {
          int index = this.index;
          globals.passkey[index] = value;

          if (index == 3 && value.length == 1) {
            globals.isEntered[index] = true;
            return;
          }
          if (index == 3 && value.isEmpty) {
            globals.isEntered[index] = false;
          } else if (value.length == 1 &&
              globals.isEntered[index + 1] == false) {
            FocusScope.of(context).nextFocus();
            globals.isEntered[index] = true;
          }
        },
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}

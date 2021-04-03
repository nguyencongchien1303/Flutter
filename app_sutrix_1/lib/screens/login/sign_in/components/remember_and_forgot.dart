import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'checkbox_remember.dart';

class RememberAndForgot extends StatelessWidget {
  final bool dark;
  const RememberAndForgot({
    Key key,
    this.dark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                CheckBoxRemember(dark: dark),
                Container(
                  child: Text(
                    "Remember me",
                    style: TextStyle(color: dark ? kTextColor : Colors.white),
                  ),
                  margin: EdgeInsets.only(left: 5),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              "Forgot password ?",
              style: TextStyle(
                  color: kBackgroundColor, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

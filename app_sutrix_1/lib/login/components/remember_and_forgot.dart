import 'package:flutter/material.dart';

import '../../constants.dart';
import 'checkbox_remember.dart';

class RememberAndForgot extends StatelessWidget {
  const RememberAndForgot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPaddin, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                CheckBoxRemember(),
                Container(
                  child: Text("Remember me"),
                  // margin: EdgeInsets.only(right: 40),
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

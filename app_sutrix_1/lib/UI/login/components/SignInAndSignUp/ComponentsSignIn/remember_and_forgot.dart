import 'package:app_sutrix_1/UI/constants.dart';
import 'package:flutter/material.dart';

import 'checkbox_remember.dart';

class RememberAndForgot extends StatelessWidget {
  const RememberAndForgot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPaddin / 1.6,
        vertical: 7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                CheckBoxRemember(),
                Container(
                  child: Text("Remember me"),
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

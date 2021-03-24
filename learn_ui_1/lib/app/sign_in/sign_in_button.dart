import 'package:flutter/material.dart';
import 'package:learn_ui_1/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton(
      {String text, Color color, Color textColor, VoidCallback onpressed})
      : super(
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 15.0),
            ),
            color: color,
            borderRadius: 4.0,
            onPressed: onpressed);
}

import 'package:flutter/material.dart';
import 'package:login_and_signup/config/palette.dart';

class TextLoginAndSignUp extends StatelessWidget {
  final String text;
  final bool isSignupScreen;
  const TextLoginAndSignUp({
    Key key,
    @required this.text,
    @required this.isSignupScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text.toUpperCase(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: !isSignupScreen ? Palette.textColor1 : Palette.activeColor,
          ),
        ),
        if (isSignupScreen)
          Container(
            margin: EdgeInsets.only(top: 3),
            height: 2,
            width: 65,
            color: Colors.orange,
          )
      ],
    );
  }
}

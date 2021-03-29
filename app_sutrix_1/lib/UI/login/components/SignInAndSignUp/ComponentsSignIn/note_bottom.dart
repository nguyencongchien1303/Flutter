import 'package:app_sutrix_1/UI/constants.dart';
import 'package:flutter/material.dart';

class NoteBottom extends StatelessWidget {
  const NoteBottom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.only(bottom: 10),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "By sign in or sign up, you agree to ",
            style: TextStyle(color: kTextColor),
            children: [
              TextSpan(
                text: "Sutrix’s Terms ",
                style: TextStyle(color: kBackgroundColor),
              ),
              TextSpan(
                text: "and ",
                style: TextStyle(color: kTextColor),
              ),
              TextSpan(
                text: "Private Policy",
                style: TextStyle(color: kBackgroundColor),
              )
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_screen/config/palette.dart';

class TextUnderGender extends StatelessWidget {
  const TextUnderGender({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    print(size);
    return Container(
      width: size.width * 0.6,
      margin: EdgeInsets.only(top: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "By pressing 'Submit' you agree to our ",
            style: TextStyle(color: Palette.textColor2),
            children: [
              TextSpan(
                text: "term and conditions",
                style: TextStyle(color: Colors.orange),
              )
            ]),
      ),
    );
  }
}

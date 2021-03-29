import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:login_screen/config/palette.dart';

class IconGender extends StatelessWidget {
  final String text;
  final bool isMale;
  const IconGender({
    Key key,
    @required this.text,
    @required this.isMale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: isMale ? Palette.textColor2 : Colors.transparent,
            border: Border.all(
              width: 1,
              color: isMale ? Colors.transparent : Palette.textColor1,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(
            MaterialCommunityIcons.account_outline,
            color: !isMale ? Palette.iconColor : Colors.white,
          ),
        ),
        Text(text, style: TextStyle(color: Palette.textColor1))
      ],
    );
  }
}

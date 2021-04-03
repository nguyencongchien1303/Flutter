import 'package:app_sutrix_1/constants.dart';
import 'package:flutter/material.dart';

class CheckBoxRemember extends StatefulWidget {
  final bool dark;
  CheckBoxRemember({Key key, this.dark}) : super(key: key);

  @override
  _CheckBoxRememberState createState() => _CheckBoxRememberState();
}

class _CheckBoxRememberState extends State<CheckBoxRemember> {
  bool valueCheckbox;

  _CheckBoxRememberState({this.valueCheckbox = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 24,
        width: 24,
        child: Checkbox(
            activeColor: kBackgroundColor,
            tristate: false,
            checkColor: Colors.white,
            value: valueCheckbox,
            onChanged: (bool value) {
              setState(() {
                valueCheckbox = value;
              });
            }),
      ),
    );
  }
}

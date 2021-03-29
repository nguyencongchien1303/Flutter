import 'package:flutter/material.dart';

class CheckBoxRemember extends StatefulWidget {
  CheckBoxRemember({Key key}) : super(key: key);

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

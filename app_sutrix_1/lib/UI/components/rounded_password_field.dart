import 'package:app_sutrix_1/UI/constants.dart';
import 'package:flutter/material.dart';
import 'text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  RoundedPasswordField({Key key, this.onChanged}) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            hintText: "Password",
            suffixIcon: Padding(
              padding: const EdgeInsets.only(left: kDefaultPaddin / 2),
              child: IconButton(
                icon: Icon(
                  Icons.visibility,
                  color: Colors.black,
                ),
                onPressed: () {
                  print(_obscureText);
                  _obscureText = !_obscureText;
                },
              ),
            ),
            border: InputBorder.none),
        obscureText: _obscureText,
      ),
    );
  }
}

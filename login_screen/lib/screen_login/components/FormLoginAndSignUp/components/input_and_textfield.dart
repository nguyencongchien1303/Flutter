import 'package:flutter/material.dart';
import 'package:login_screen/config/palette.dart';

class InputTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isPassword;
  final bool isEmail;
  const InputTextField({
    Key key,
    this.text,
    this.icon,
    this.isPassword,
    this.isEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Palette.textColor1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(35.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Palette.textColor1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(35.0),
            ),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Palette.textColor1,
          ),
        ),
      ),
    );
  }
}

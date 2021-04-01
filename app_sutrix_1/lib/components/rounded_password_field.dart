import 'package:app_sutrix_1/constants.dart';
import 'package:flutter/material.dart';
import 'text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final passController;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.passController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        controller: passController,
        decoration: InputDecoration(
          hintText: "Password",
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: kDefaultPaddin * 3),
            child: Icon(
              Icons.visibility,
              color: Colors.black,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

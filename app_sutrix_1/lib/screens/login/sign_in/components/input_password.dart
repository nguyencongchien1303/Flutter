import 'package:app_sutrix_1/components/rounded_password_field.dart';
import 'package:app_sutrix_1/constants.dart';
import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  final bool dark;
  final passController;
  const InputPassword({
    Key key,
    @required this.passController,
    this.dark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: TextStyle(color: dark ? kTextColor : Colors.white),
          ),
          SizedBox(height: 5),
          RoundedPasswordField(
            onChanged: (value) {},
            dark: dark,
            passController: passController,
          )
        ],
      ),
    );
  }
}

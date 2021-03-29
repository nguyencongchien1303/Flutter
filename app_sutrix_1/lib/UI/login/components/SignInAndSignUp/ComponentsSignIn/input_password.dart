import 'package:app_sutrix_1/UI/components/rounded_password_field.dart';
import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  const InputPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Password"),
          RoundedPasswordField(
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}

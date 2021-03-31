import 'package:app_sutrix_1/components/rounded_password_field.dart';
import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  final AsyncSnapshot<dynamic> snapshot;
  final passController;
  const InputPassword({
    Key key,
    @required this.passController,
    this.snapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(snapshot);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Password"),
          RoundedPasswordField(
            onChanged: (value) {},
            snapshot: snapshot,
            passController: passController,
          )
        ],
      ),
    );
  }
}

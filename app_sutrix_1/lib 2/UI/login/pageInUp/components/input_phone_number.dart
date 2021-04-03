import 'package:app_sutrix_1/components/rounded_input_field.dart';
import 'package:flutter/material.dart';

class InputPhoneNumber extends StatelessWidget {
  final emailController;
  const InputPhoneNumber({
    Key key,
    @required this.emailController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(snapshot);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Phone number"),
          RoundedInputField(
              hintText: "Enter your phone number",
              onChanged: (value) {},
              emailController: emailController),
        ],
      ),
    );
  }
}

import 'package:app_sutrix_1/UI/components/rounded_input_field.dart';
import 'package:flutter/material.dart';

class InputPhoneNumber extends StatelessWidget {
  const InputPhoneNumber({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Phone number"),
          RoundedInputField(
            hintText: "Enter your phone number",
            onChanged: (value) {
              // print(value);
            },
          ),
        ],
      ),
    );
  }
}

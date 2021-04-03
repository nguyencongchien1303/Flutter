import 'package:app_sutrix_1/components/rounded_input_field.dart';
import 'package:app_sutrix_1/constants.dart';
import 'package:flutter/material.dart';

class InputPhoneNumber extends StatelessWidget {
  final bool dark;
  final phoneNumberController;
  const InputPhoneNumber({
    Key key,
    @required this.phoneNumberController,
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
            "Phone number",
            style: TextStyle(color: dark ? kTextColor : Colors.white),
          ),
          SizedBox(height: 5),
          RoundedInputField(
              hintText: "Enter your phone number",
              dark: dark,
              onChanged: (value) {},
              phoneNumberController: phoneNumberController),
        ],
      ),
    );
  }
}

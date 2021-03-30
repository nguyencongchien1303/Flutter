import 'package:app_sutrix_1/components/rounded_input_field.dart';
import 'package:flutter/material.dart';

class InputPhoneNumber extends StatelessWidget {
  final bool snapshotHasError;
  final String snapshotError;
  final emailController;
  const InputPhoneNumber({
    Key key,
    @required this.emailController,
    this.snapshotHasError,
    this.snapshotError,
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
              onChanged: (value) {},
              snapshotHasError: snapshotHasError,
              snapshotError: snapshotError,
              emailController: emailController),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final AsyncSnapshot<dynamic> snapshot;
  final String hintText;
  final ValueChanged<String> onChanged;
  final emailController;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.emailController,
    this.snapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
          onChanged: onChanged,
          controller: emailController,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            errorText: snapshot.hasError ? snapshot.error : null,
          ),
        ),
        errorSnapshot: snapshot.hasError);
  }
}

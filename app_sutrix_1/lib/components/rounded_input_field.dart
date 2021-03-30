import 'package:flutter/material.dart';
import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final bool snapshotHasError;
  final String snapshotError;
  final String hintText;
  final ValueChanged<String> onChanged;
  final emailController;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.emailController,
    this.snapshotHasError,
    this.snapshotError,
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
            errorText: snapshotHasError ? snapshotError : null,
          ),
        ),
        errorSnapshot: snapshotHasError);
  }
}

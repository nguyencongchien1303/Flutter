import 'package:app_sutrix_1/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final bool dark;
  final String hintText;
  final ValueChanged<String> onChanged;
  final phoneNumberController;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.phoneNumberController,
    this.dark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: phoneNumberController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        hintText: hintText,
        hintStyle: TextStyle(color: dark ? null : Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(color: Colors.red),
        ),
        // errorText: snapshot.hasError ? snapshot.error : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(color: !dark ? Colors.grey : Colors.black),
        ),
      ),
      // errorSnapshot: snapshot.hasError,
    );
  }
}

import 'package:flutter/material.dart';
import 'text_field_container.dart';

class RoundedInputField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  RoundedInputField({Key key, this.hintText, this.onChanged}) : super(key: key);

  @override
  _RoundedInputFieldState createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFieldContainer(
        child: TextField(
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

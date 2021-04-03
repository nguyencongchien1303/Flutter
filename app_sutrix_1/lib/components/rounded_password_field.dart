import 'package:app_sutrix_1/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatefulWidget {
  final bool dark;
  final passController;
  final ValueChanged<String> onChanged;
  RoundedPasswordField({
    Key key,
    this.passController,
    this.onChanged,
    this.dark,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool isShowPass = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      controller: widget.passController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        hintText: "Password",
        hintStyle: TextStyle(color: widget.dark ? null : Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide:
              BorderSide(color: !widget.dark ? Colors.grey : Colors.black),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: kDefaultPaddin * 3),
          child: IconButton(
            onPressed: () {
              print("dsadsa");
              setState(() {
                isShowPass = !isShowPass;
              });
            },
            icon: Icon(
              isShowPass ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
          ),
        ),
        // errorText: widget.snapshot.hasError ? widget.snapshot.error : null,
      ),
      obscureText: isShowPass,
    );
  }
}

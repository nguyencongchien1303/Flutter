import 'package:flutter/material.dart';

class ButtonSubmit extends StatefulWidget {
  ButtonSubmit({Key key}) : super(key: key);

  @override
  _ButtonSubmitState createState() => _ButtonSubmitState();
}

class _ButtonSubmitState extends State<ButtonSubmit> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.72 - ((size.width * 0.24) / 2),
      right: 0,
      left: 0,
      child: Center(
        child: Container(
          height: size.width * 0.24,
          width: size.width * 0.24,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}

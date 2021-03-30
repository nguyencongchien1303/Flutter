import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final bool errorSnapshot;
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
    this.errorSnapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(width: 1, color: Colors.black),
      ),
      child: child,
    );
  }
}

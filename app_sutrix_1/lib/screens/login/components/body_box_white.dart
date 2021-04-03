import 'package:flutter/material.dart';

class BodyBoxWhite extends StatelessWidget {
  final bool switchInUp;
  final bool dark;
  const BodyBoxWhite({
    Key key,
    this.dark,
    this.switchInUp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.bounceInOut,
      height: switchInUp ? size.height * 0.52 : size.height * 0.7,
      decoration: BoxDecoration(
        color: dark ? Colors.white : Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

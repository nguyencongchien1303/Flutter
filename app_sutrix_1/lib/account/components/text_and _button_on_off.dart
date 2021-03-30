import 'package:app_sutrix_1/blocs/dark_mode_bloc.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class TextAndButtonOnOff extends StatelessWidget {
  final double position;
  final String text;

  const TextAndButtonOnOff({Key key, @required this.text, this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
        top: position,
        left: 0,
        right: 0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          height: size.height * 0.09,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              ButtonOnOff()
            ],
          ),
        ));
  }
}

class ButtonOnOff extends StatefulWidget {
  ButtonOnOff({Key key}) : super(key: key);

  @override
  _ButtonOnOffState createState() => _ButtonOnOffState();
}

class _ButtonOnOffState extends State<ButtonOnOff> {
  bool isSwitched = false;
  DarkMode blocDarkMode = new DarkMode();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
              blocDarkMode.isDarkMode(isSwitched);
            });
          },
          activeTrackColor: kBackgroundColor.withOpacity(0.5),
          activeColor: kBackgroundColor,
        ),
        ElevatedButton(
          onPressed: () {
            blocDarkMode.isDarkMode(isSwitched);
          },
          child: Text("a"),
        )
      ],
    );
  }
}

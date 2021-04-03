import 'package:app_sutrix_1/blocs/dark_theme_bloc.dart';
import 'package:app_sutrix_1/events/dark_theme_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';

class BiometricOnOff extends StatelessWidget {
  final bool darkMode;
  final double position;
  final String text;

  const BiometricOnOff({
    Key key,
    @required this.text,
    this.position,
    this.darkMode,
  }) : super(key: key);

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
              color: !darkMode ? Color(0xFF212121) : Colors.white,
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: !darkMode ? Colors.white : Color(0xFF212121),
                  ),
                ),
              ),
              ButtonOnOff()
            ],
          ),
        ));
  }
}

class ButtonOnOff extends StatefulWidget {
  @override
  _ButtonOnOffState createState() => _ButtonOnOffState();
}

class _ButtonOnOffState extends State<ButtonOnOff> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkThemeBloc, bool>(builder: (context, dark) {
      return Row(
        children: [
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                if (value) {
                  context.read<DarkThemeBloc>().add(DarkThemeEvent.darkTheme);
                } else {
                  context.read<DarkThemeBloc>().add(DarkThemeEvent.lightTheme);
                }
              });
            },
            activeTrackColor: kBackgroundColor.withOpacity(0.5),
            activeColor: kBackgroundColor,
          ),
        ],
      );
    });
  }
}

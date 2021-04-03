import 'package:app_sutrix_1/screens/account/components/language_profile.dart';
import 'package:flutter/material.dart';

import 'background_color_body.dart';
import 'biometric_on_off.dart';
import 'remind_profile.dart';
import 'setting_profile.dart';
import 'dark_mode_on_off.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  final bool dark;

  const Body({Key key, this.dark}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.79,
          child: Stack(
            children: [
              BackgroundColorBody(size: size),
              SettingProfile(darkMode: dark),
              DarkModeOnOff(
                text: "Dark mode",
                position: size.height * 0.29,
                darkMode: dark,
              ),
              RemidProfile(darkMode: !dark),
              LanguageProfile(darkMode: !dark),
              BiometricOnOff(
                text: "Enable sign in with Biometric",
                position: size.height * 0.70,
                darkMode: dark,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

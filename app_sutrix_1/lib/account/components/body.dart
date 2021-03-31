import 'package:app_sutrix_1/account/components/language_profile.dart';
import 'package:flutter/material.dart';

import 'background_color_body.dart';
import 'remind_profile.dart';
import 'setting_profile.dart';
import 'text_and _button_on_off.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

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
              SettingProfile(),
              TextAndButtonOnOff(
                text: "Dark mode",
                position: size.height * 0.29,
              ),
              RemidProfile(),
              LanguageProfile(),
              // TextAndButtonOnOff(
              //     text: "Enable sign in with Biometric",
              //     position: size.height * 0.70),
            ],
          ),
        ),
      ],
    );
  }
}
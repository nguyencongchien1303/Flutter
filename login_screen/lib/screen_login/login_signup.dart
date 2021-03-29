import 'package:flutter/material.dart';
import 'package:login_screen/config/palette.dart';

import 'components/FormLoginAndSignUp/components/button_submit.dart';
import 'components/Background/header_and_background_image.dart';
import 'components/FormLoginAndSignUp/form_login_and_signup.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          HeaderAndBackgroundImage(), //background
          ButtonSubmit(isShowShadow: true), //button submit
          FormLoginAndSignup(), //form
          ButtonSubmit(isShowShadow: false), //button submit
        ],
      ),
    );
  }
}

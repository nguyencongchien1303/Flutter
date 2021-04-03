import 'package:app_sutrix_1/blocs/dark_theme_bloc.dart';
import 'package:app_sutrix_1/blocs/switch_signin_signup_bloc.dart';
import 'package:app_sutrix_1/screens/login/sign_in/sign_in_form.dart';
import 'package:app_sutrix_1/screens/login/sign_up/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'body_box_white.dart';
import 'note_bottom.dart';
import 'header_sign_in_and_sign_out.dart';

class BodyWhiteInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<DarkThemeBloc, bool>(
      builder: (_, dark) {
        return Container(
          height: size.height * 0.72,
          width: size.width * 0.95,
          child: SizedBox(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 600),
              curve: Curves.bounceInOut,
              child: BlocBuilder<SwitchSignInSignUpBloc, bool>(
                builder: (_, switchInUp) {
                  return Stack(
                    children: [
                      BodyBoxWhite(dark: dark, switchInUp: switchInUp),
                      Container(
                        height:
                            switchInUp ? size.height * 0.52 : size.height * 0.7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HeaderSignInAndSignUp(dark: dark),
                            switchInUp
                                ? FormSignIn(dark: dark)
                                : FormSignUp(dark: dark),
                            NoteBottom(dark: dark)
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

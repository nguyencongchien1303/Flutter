import 'package:app_sutrix_1/UI/account/home_screen.dart';
import 'package:app_sutrix_1/blocs/change_signin_signout.dart';
import 'package:app_sutrix_1/blocs/login_bloc.dart';
import 'package:app_sutrix_1/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'components/body_box_white.dart';
import 'components/input_password.dart';
import 'components/input_phone_number.dart';
import 'components/note_bottom.dart';
import 'components/remember_and_forgot.dart';
import 'components/header_sign_in_and_sign_out.dart';

class BodyWhiteInput extends StatelessWidget {
  const BodyWhiteInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.6,
      width: size.width * 0.95,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3))
          ]),
      child: SizedBox(
        // height: size.height * 0.6,
        child: Stack(
          children: [
            BodyBoxWhite(),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderSignInAndSignUp(),
                  Column(
                    children: [
                      InputPhoneNumber(
                        emailController: _emailController,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InputPassword(
                        passController: _passController,
                      ),
                      RememberAndForgot(),
                      RoundedButton(
                          text: "Sign In",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BodyAccount(),
                                ));
                          }),
                    ],
                  ),
                  NoteBottom()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

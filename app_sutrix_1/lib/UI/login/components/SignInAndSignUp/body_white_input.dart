import 'package:app_sutrix_1/UI/account/home_screen.dart';
import 'package:app_sutrix_1/UI/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'ComponentsSignIn/input_password.dart';
import 'ComponentsSignIn/input_phone_number.dart';
import 'ComponentsSignIn/note_bottom.dart';
import 'ComponentsSignIn/remember_and_forgot.dart';
import '../sign_in_and_sign_out.dart';

class BodyWhiteInput extends StatelessWidget {
  const BodyWhiteInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height * 0.6;
    double width = size.width * 0.90;
    print(size);
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3))
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInAndSignUp(),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                InputPhoneNumber(),
                SizedBox(
                  height: 13,
                ),
                InputPassword(),
                RememberAndForgot(),
                RoundedButton(
                  text: "Sign In",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BodyAccount()),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          NoteBottom()
        ],
      ),
    );
  }
}

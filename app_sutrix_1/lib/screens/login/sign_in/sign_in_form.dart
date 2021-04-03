import 'package:app_sutrix_1/components/rounded_button.dart';
import 'package:app_sutrix_1/screens/account/home_screen.dart';
import 'package:app_sutrix_1/screens/login/sign_in/components/input_password.dart';
import 'package:app_sutrix_1/screens/login/sign_in/components/input_phone_number.dart';
import 'package:app_sutrix_1/screens/login/sign_in/components/remember_and_forgot.dart';
import 'package:flutter/material.dart';

class FormSignIn extends StatelessWidget {
  const FormSignIn({
    Key key,
    this.dark,
  }) : super(key: key);

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _phoneNumberController =
        TextEditingController();
    final TextEditingController _passController = TextEditingController();
    return AnimatedContainer(
      duration: Duration(seconds: 3),
      child: Column(
        children: [
          InputPhoneNumber(
            dark: dark,
            phoneNumberController: _phoneNumberController,
          ),
          SizedBox(
            height: 10,
          ),
          InputPassword(
            dark: dark,
            passController: _passController,
          ),
          RememberAndForgot(
            dark: dark,
          ),
          RoundedButton(
            text: "Sign In",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BodyAccount(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

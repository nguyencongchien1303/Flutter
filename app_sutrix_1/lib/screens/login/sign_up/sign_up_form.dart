import 'package:app_sutrix_1/auth/auth_repository.dart';
import 'package:app_sutrix_1/components/rounded_button.dart';
import 'package:app_sutrix_1/screens/login/sign_in/components/input_password.dart';
import 'package:app_sutrix_1/screens/login/sign_in/components/input_phone_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/input_name.dart';

class FormSignUp extends StatelessWidget {
  const FormSignUp({
    Key key,
    this.dark,
  });
  final bool dark;

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _phoneNumberController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _confirmPasswordController = TextEditingController();
    return AnimatedContainer(
        duration: Duration(seconds: 3),
        child: RepositoryProvider(
          create: (context) => AuthRepository(),
          child: Column(
            children: [
              NameNumber(
                nameController: _nameController,
                dark: dark,
              ),
              SizedBox(
                height: 10,
              ),
              InputPhoneNumber(
                phoneNumberController: _phoneNumberController,
                dark: dark,
              ),
              SizedBox(
                height: 10,
              ),
              InputPassword(
                passController: _passwordController,
                dark: dark,
              ),
              SizedBox(
                height: 10,
              ),
              InputPassword(
                passController: _confirmPasswordController,
                dark: dark,
              ),
              RoundedButton(
                text: "Sign Up",
                press: () {
                  print(_phoneNumberController.text);
                  print(_nameController.text);
                  print(_passwordController.text);
                  print(_confirmPasswordController.text);
                },
              ),
            ],
          ),
        ));
  }
}

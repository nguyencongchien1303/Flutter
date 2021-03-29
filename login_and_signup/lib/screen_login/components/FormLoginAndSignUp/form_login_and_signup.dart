import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'components/icon_gender.dart';
import 'components/input_and_textfield.dart';
import 'components/text_login_and_signup.dart';
import 'components/text_under_gender.dart';

class FormLoginAndSignup extends StatefulWidget {
  FormLoginAndSignup({Key key}) : super(key: key);

  @override
  _FormLoginAndSignupState createState() => _FormLoginAndSignupState();
}

class _FormLoginAndSignupState extends State<FormLoginAndSignup> {
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.25,
      child: Container(
        padding: EdgeInsets.all(20),
        height: size.height * 0.47,
        width: size.width - 40,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 15,
                spreadRadius: 5),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSignupScreen = true;
                    });
                  },
                  child: TextLoginAndSignUp(
                    text: "login",
                    isSignupScreen: isSignupScreen,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSignupScreen = false;
                    });
                  },
                  child: TextLoginAndSignUp(
                    text: "signup",
                    isSignupScreen: !isSignupScreen,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  InputTextField(
                    text: "User name",
                    icon: MaterialCommunityIcons.email_outline,
                    isPassword: false,
                    isEmail: false,
                  ),
                  InputTextField(
                    text: "Email",
                    icon: MaterialCommunityIcons.email_outline,
                    isPassword: false,
                    isEmail: true,
                  ),
                  InputTextField(
                    text: "Password",
                    icon: MaterialCommunityIcons.email_outline,
                    isPassword: true,
                    isEmail: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: IconGender(
                            text: "Male",
                            isMale: isMale,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: IconGender(
                            text: "Female",
                            isMale: !isMale,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextUnderGender(size: size)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

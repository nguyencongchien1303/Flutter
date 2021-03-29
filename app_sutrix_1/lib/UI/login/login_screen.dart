import 'package:app_sutrix_1/UI/constants.dart';
import 'package:app_sutrix_1/UI/login/components/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBarLogin(),
      body: Body(),
    );
  }

  AppBar buildAppBarLogin() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/bold.png",
            fit: BoxFit.cover,
            height: 25.0,
          ),
        ],
      ),
    );
  }
}

import 'package:app_sutrix_1/blocs/switch_signin_signup_bloc.dart';
import 'package:app_sutrix_1/constants.dart';
import 'package:app_sutrix_1/screens/login/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SwitchSignInSignUpBloc>(
      create: (context) => SwitchSignInSignUpBloc(),
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: buildAppBar(),
        body: Body(),
      ),
    );
  }

  AppBar buildAppBar() {
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

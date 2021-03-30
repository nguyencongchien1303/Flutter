import 'package:app_sutrix_1/account/home_screen.dart';
import 'package:app_sutrix_1/blocs/change_signin_signout.dart';
import 'package:app_sutrix_1/blocs/login_bloc.dart';
import 'package:app_sutrix_1/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'body_box_white.dart';
import 'input_password.dart';
import 'input_phone_number.dart';
import 'note_bottom.dart';
import 'remember_and_forgot.dart';
import 'header_sign_in_and_sign_out.dart';

class BodyWhiteInput extends StatelessWidget {
  const BodyWhiteInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginBloc bloc = new LoginBloc();
    ChangeInOut blocInOut = new ChangeInOut();
    final _emailController = TextEditingController();
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
        height: size.height * 0.6,
        child: Stack(
          children: [
            BodyBoxWhite(),
            Container(
                child: StreamBuilder(
              builder: (context, snapshort) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeaderSignInAndSignUp(),
                  !snapshort.hasError
                      ? SizedBox(
                          height: 20,
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  StreamBuilder(
                    stream: bloc.phoneNumberStream,
                    builder: (context, snapshot) => InputPhoneNumber(
                      emailController: _emailController,
                      snapshotHasError: snapshot.hasError,
                      snapshotError: snapshot.error,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  StreamBuilder(
                    stream: bloc.passwordStream,
                    builder: (context, snapshot) =>
                        InputPassword(passController: _passController),
                  ),
                  RememberAndForgot(),
                  RoundedButton(
                    text: "Sign In",
                    press: () {
                      if (bloc.isValidInfo(
                          _emailController.text, _passController.text)) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BodyAccount(),
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  NoteBottom()
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

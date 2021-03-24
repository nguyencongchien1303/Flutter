import 'package:flutter/material.dart';
import 'package:learn_ui_1/app/sign_in/sign_in_button.dart';
import 'package:learn_ui_1/common_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: _buildContent(), //Thêm dấu "_" để có thể private
      backgroundColor: Colors.grey[200],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("This is AppBar"),
      elevation: 2.0, //Properties đổ bóng
    );
  }

  Container _buildContent() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //căn giữa theo chiều dọc
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // "stretch là nó kéo căng toàn màn hình theo chiều ngang"

        children: [
          Text(
            "Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          CustomRaisedButton(
            child: Text(
              'Sign in with Google',
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            color: Colors.white,
            borderRadius: 4.0,
            onPressed: () {},
          ),
          SizedBox(
            height: 2,
          ),
          SignInButton(
            text: 'Sign in with Google',
            textColor: Colors.black87,
            color: Colors.white,
            onpressed: () {},
          )
        ],
      ),
    );
  }
}

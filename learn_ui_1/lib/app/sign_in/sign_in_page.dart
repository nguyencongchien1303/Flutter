import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: _buildContent(), //Thêm dấu "_" để có thể private
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
      color: Colors.grey[50],
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
          Container(
            color: Colors.yellow,
            child: SizedBox(
              height: 100,
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.green,
            child: SizedBox(
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}

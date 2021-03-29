import 'package:flutter/material.dart';
import 'SignInAndSignUp/body_white_input.dart';
import 'background/icon_money.dart';
import 'background/text_bottom_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconMoney(),
          TextBottomIcon(),
          BodyWhiteInput(),
        ],
      ),
    );
  }
}

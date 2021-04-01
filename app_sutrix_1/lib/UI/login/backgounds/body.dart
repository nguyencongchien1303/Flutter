import 'package:flutter/material.dart';
import '../pageInUp/body_white_input.dart';
import 'components/icon_money.dart';
import 'components/text_bottom_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconMoney(),
            TextBottomIcon(),
            BodyWhiteInput(),
          ],
        ),
      ),
    );
  }
}

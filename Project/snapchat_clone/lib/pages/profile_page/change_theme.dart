import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/sign_in_up/sign_in/sign_in_screen.dart';
import 'package:snapchat_clone/theme/theme_service.dart';

class ProfilePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Theme.of(context).textTheme.headline1.color,
          onPressed: () {
            Get.back();
          },
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                ThemeService().changeThemeMode();
              },
              child: Text('switch theme'),
            ),
            MaterialButton(
              onPressed: () {
                Get.to(SignInScreen());
              },
              child: Text('Log out'),
            ),
          ],
        ),
      ),
    );
  }
}

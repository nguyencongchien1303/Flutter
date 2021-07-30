import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';
import 'package:snapchat_clone/sign_in_up/sign_in_up/sign_in_up_screen.dart';
import 'package:snapchat_clone/theme/theme_service.dart';

class CameraPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                ThemeService().changeThemeMode();
              },
              child: Text(
                'switch theme',
                style: TextStyle(
                    color: Theme.of(context).textTheme.headline1.color),
              ),
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        child: MaterialButton(
            onPressed: () {
              ThemeService().changeThemeMode();
            },
            child: Text('switch theme')),
      ),
    );
  }
}

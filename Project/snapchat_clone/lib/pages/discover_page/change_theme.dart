import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/theme/theme_service.dart';

class DiscoverPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

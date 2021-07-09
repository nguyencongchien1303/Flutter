import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscoverPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: MaterialButton(
            onPressed: () {
              Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
            },
            child: Text('switch theme')),
      ),
    );
  }
}

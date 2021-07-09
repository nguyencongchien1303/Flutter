import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/root_app.dart';
import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      // theme: ThemeData(fontFamily: 'Raleway'),
      darkTheme: Themes().darkTheme,
      home: RootApp(),
    );
  }
}

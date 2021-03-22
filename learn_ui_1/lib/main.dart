import 'package:flutter/material.dart';
import 'package:learn_ui_1/app/sign_in/sign_in_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "this is title",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: SignInPage(),
    );
  }
}

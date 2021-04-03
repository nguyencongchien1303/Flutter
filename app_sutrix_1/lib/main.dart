import 'package:app_sutrix_1/blocs/dark_theme_bloc.dart';
import 'package:app_sutrix_1/constants.dart';
import 'package:app_sutrix_1/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DarkThemeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sutrix Wallet',
        theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: LoginScreen(),
      ),
    );
  }
}

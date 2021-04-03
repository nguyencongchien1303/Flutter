import 'package:app_sutrix_1/blocs/dark_theme_bloc.dart';
import 'package:app_sutrix_1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'components/body.dart';

class BodyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<DarkThemeBloc, bool>(
      builder: (_, dark) {
        return Scaffold(
          backgroundColor: dark ? Color(0xFFECEFF1) : Colors.black,
          appBar: buildAppBar(context, size),
          body: Body(dark: dark),
        );
      },
    );
  }
}

AppBar buildAppBar(BuildContext context, Size size) {
  return AppBar(
    bottomOpacity: 0.0,
    toolbarHeight: 130,
    flexibleSpace: Container(
      color: kBackgroundColor,
    ),
    backgroundColor: kBackgroundColor,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPaddin * 3),
      child: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () {
            Navigator.pop(context);
          }),
    ),
    centerTitle: true,
    title: Stack(children: [
      SizedBox(
        height: 250,
        width: 250,
        child: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/DefaultAvatar.svg",
            ),
            onPressed: () {}),
      ),
      Positioned(
        top: size.height / 4.55,
        left: size.width * 0.18,
        child: Text(
          "Công Chiến",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ]),
  );
}

import 'package:app_sutrix_1/blocs/dark_mode_bloc.dart';
import 'package:app_sutrix_1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'backgrounds/body.dart';

// class BodyAccount extends StatefulWidget {
//   BodyAccount({Key key}) : super(key: key);

//   @override
//   _BodyAccountState createState() => _BodyAccountState();
// }

// class _BodyAccountState extends State<BodyAccount> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//        child: child,
//     );
//   }
// }

class BodyAccount extends StatefulWidget {
  BodyAccount({Key key}) : super(key: key);

  @override
  _BodyAccountState createState() => _BodyAccountState();
}

class _BodyAccountState extends State<BodyAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFECEFF1),
      appBar: buildAppBar(context, size),
      // appBar: AppBar(
      //   title: Text("dsads"),
      // ),
      body: Body(),
    );
  }
}

AppBar buildAppBar(BuildContext context, Size size) {
  return AppBar(
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
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 250,
          child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/DefaultAvatar.svg",
              ),
              onPressed: () {}),
        ),
        Container(
          child: Text(
            "Công Chiến",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ),
  );
}

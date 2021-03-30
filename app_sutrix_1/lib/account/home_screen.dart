import 'package:app_sutrix_1/blocs/dark_mode_bloc.dart';
import 'package:app_sutrix_1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';

// class BodyAccount extends StatefulWidget {
//   BodyAccount({Key key}) : super(key: key);

//   @override
//   _BodyAccountState createState() => _BodyAccountState();
// }

class BodyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DarkMode blocDarkMode = new DarkMode();
    Size size = MediaQuery.of(context).size;
    // return StreamBuilder(
    //   stream: blocDarkMode.darkModeStream,
    //   builder: (context, snapshot) => Scaffold(
    //     backgroundColor: snapshot.hasError ? Color(0xFFECEFF1) : Colors.black,
    //     // appBar: buildAppBar(context, size),
    //     appBar: AppBar(
    //       title: Text('${snapshot.hasError}'),
    //     ),
    //     body: Body(),
    //   ),
    // );
    return Scaffold(
      backgroundColor: Color(0xFFECEFF1),
      appBar: buildAppBar(context, size),
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

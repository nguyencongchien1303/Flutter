import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class LanguageProfile extends StatelessWidget {
  const LanguageProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
        top: size.height * 0.583,
        left: 0,
        right: 0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          height: size.height * 0.09,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: Text(
                  "Language",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Text(
                    "English",
                    style: TextStyle(color: kBackgroundColor, fontSize: 18),
                  ),
                  SizedBox(
                    width: 30,
                    height: 35,
                    child: IconButton(
                        icon: SvgPicture.asset(
                          "assets/icons/VectorNext.svg",
                          color: Color(0xFFE0E0E0),
                        ),
                        onPressed: () {}),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'icon_and_text_profile.dart';

class SettingProfile extends StatelessWidget {
  const SettingProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
        top: size.height * 0.02,
        left: 0,
        right: 0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          height: size.height * 0.24,
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
          child: Padding(
            padding: const EdgeInsets.only(top: kDefaultPaddin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconAndTextSettingProfile(
                      text: "Edit profile",
                      image: "assets/icons/changeInfomation.svg",
                    ),
                    IconAndTextSettingProfile(
                      text: " Change  \npassword",
                      image: "assets/icons/ChangePassword.svg",
                    ),
                    IconAndTextSettingProfile(
                      text: "Logout",
                      image: "assets/icons/LogOut.svg",
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

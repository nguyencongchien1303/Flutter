import 'package:app_sutrix_1/blocs/change_signin_signout.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class HeaderSignInAndSignUp extends StatefulWidget {
  const HeaderSignInAndSignUp({
    Key key,
  }) : super(key: key);
  @override
  _SignInAndSignUpState createState() => _SignInAndSignUpState();
}

class _SignInAndSignUpState extends State<HeaderSignInAndSignUp> {
  List<String> categories = ["Sign In", "Sign Up"];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal, //set cho nó nằm ngang
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategory(index)),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? kTextColor : kTextLightColor),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 6),
              height: 4,
              width: 30,
              color: selectedIndex == index
                  ? kBackgroundColor
                  : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}

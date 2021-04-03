import 'package:flutter/material.dart';

import '../../../constants.dart';

class BackgroundColorBody extends StatelessWidget {
  const BackgroundColorBody({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: kDefaultPaddin,
        left: kDefaultPaddin,
        bottom: 36 + kDefaultPaddin,
      ),
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(200, 25),
          bottomRight: Radius.elliptical(200, 25),
        ),
      ),
    );
  }
}

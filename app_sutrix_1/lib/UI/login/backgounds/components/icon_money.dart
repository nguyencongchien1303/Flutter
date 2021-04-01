import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconMoney extends StatelessWidget {
  const IconMoney({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      // child: SvgPicture.asset("assets/icons/heart.svg"),
      child: IconButton(
        icon: SvgPicture.asset("assets/icons/SavingMoney.svg"),
        onPressed: () {},
      ),
    );
  }
}

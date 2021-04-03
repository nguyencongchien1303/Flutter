import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconAndTextSettingProfile extends StatelessWidget {
  final String text, image;
  const IconAndTextSettingProfile({
    Key key,
    @required this.text,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: text.length > 13 ? 15 : 0,
          ),
          Container(
            child: SizedBox(
              height: 80,
              width: 100,
              child: IconButton(
                  icon: SvgPicture.asset(
                    image,
                  ),
                  onPressed: () {}),
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapchat_clone/data/bottom_items.dart';

class SearchPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: 27,
              width: 27,
              child: SvgPicture.asset(
                iconItemsTouch[1],
                color: Theme.of(context).textTheme.headline1.color,
              ),
            ),
            SizedBox(
              height: 26,
              width: 26,
              child: SvgPicture.asset(
                iconItemsTouch[1],
                color: Theme.of(context).textTheme.headline1.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

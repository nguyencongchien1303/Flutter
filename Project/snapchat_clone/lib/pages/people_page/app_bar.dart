import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../../theme/colors.dart';

class AppBarPeople extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(
        "People",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).textTheme.headline1.color,
        ),
      ),
    );
  }
}

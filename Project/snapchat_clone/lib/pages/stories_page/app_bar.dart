import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../../theme/colors.dart';

class AppBarStories extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: black.withOpacity(0.1),
                ),
                child: Icon(
                  Entypo.user,
                  color: green,
                  size: 28,
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: black.withOpacity(0.1),
                ),
                child: Icon(
                  Icons.search_outlined,
                  color: darkGrey,
                  size: 28,
                ),
              ),
            ],
          ),
          Text("Stories",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: black)),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: black.withOpacity(0.1),
                ),
                child: Icon(
                  Icons.person_add_outlined,
                  color: darkGrey,
                  size: 28,
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: black.withOpacity(0.1),
                ),
                child: Icon(
                  Icons.more_horiz,
                  color: darkGrey,
                  size: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

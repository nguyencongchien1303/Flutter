import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:snapchat_clone/theme/colors.dart';

class AppbarStoryDetail extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: black,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          Get.back();
        },
      ),
      actions: [
        LikeButton(
          size: 30,
          circleColor: CircleColor(start: Colors.red, end: Colors.red),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Colors.red,
            dotSecondaryColor: Colors.red,
          ),
          likeBuilder: (bool isLiked) {
            return Icon(
              Icons.favorite,
              color: isLiked ? Colors.red : Colors.grey,
              size: 30,
            );
          },
          // likeCount: 665,
          countBuilder: (int count, bool isLiked, String text) {
            var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
            Widget result;
            if (count == 0) {
              result = Text(
                "love",
                style: TextStyle(color: color),
              );
            } else
              result = Text(
                text,
                style: TextStyle(color: color),
              );
            return result;
          },
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert_outlined),
        ),
      ],
    );
  }
}

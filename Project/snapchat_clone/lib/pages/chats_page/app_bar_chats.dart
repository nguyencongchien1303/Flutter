import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';
import 'package:snapchat_clone/pages/profile_page/change_theme.dart';

class AppBarChats extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(ProfilePageScreen());
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(stories_data[0].avatar),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "Chats",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).textTheme.headline1.color,
                ),
              ),
              Container(
                height: 42,
                width: 42,
                child: Center(
                  child: SvgPicture.asset('assets/icons/new_messages.svg',
                      color: Theme.of(context).textTheme.headline1.color),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

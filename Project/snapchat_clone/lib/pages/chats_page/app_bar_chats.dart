import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snapchat_clone/pages/chat_page_detail.dart/chat_page_detail_screen.dart';

class AppBarChats extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(55);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 42,
                // width: 42,
                child: Row(
                  children: [
                    Text(
                      "_pisces_13_",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.headline1.color,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: IconButton(
                        icon: SvgPicture.asset(
                          'assets/icons/account_list.svg',
                          color: Theme.of(context).textTheme.headline1.color,
                          height: 13,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 42,
                width: 42,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ChatPageDetailScreen()));
                  },
                  splashRadius: 15,
                  icon: Icon(
                    AntDesign.plus,
                    color: Theme.of(context).textTheme.headline1.color,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

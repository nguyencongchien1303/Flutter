import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';

class AppBarChats extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(stories_data[0].avatar),
                            fit: BoxFit.cover)),
                  ),
                  Text(
                    "Chats",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.headline1.color,
                    ),
                  ),
                  Icon(Icons.edit)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

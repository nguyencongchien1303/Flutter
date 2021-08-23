import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snapchat_clone/data/chat.dart';
import 'package:snapchat_clone/theme/colors.dart';

class GetAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  splashRadius: 20,
                  icon: Icon(Icons.arrow_back_ios,
                      color: Theme.of(context).textTheme.headline1.color),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Container(
                  height: 33,
                  width: 33,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(chats[0]['profile']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 33,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chats[0]['username'],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.headline1.color,
                        ),
                      ),
                      Text(
                        chats[0]['username'],
                        style: TextStyle(fontSize: 12, color: bgGrey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                  splashRadius: 20,
                  icon: SvgPicture.asset(
                    'assets/icons/phone_outline.svg',
                    color: Theme.of(context).textTheme.headline1.color,
                  ),
                  color: Colors.red,
                  onPressed: () {},
                ),
                IconButton(
                  splashRadius: 20,
                  icon: SvgPicture.asset(
                    'assets/icons/video_call_outline.svg',
                    color: Theme.of(context).textTheme.headline1.color,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

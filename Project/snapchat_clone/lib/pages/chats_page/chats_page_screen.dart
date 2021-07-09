import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';

import 'app_bar_chats.dart';
import 'stories.dart';

class ChatsPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBarChats(),
      body: Stories(),
    );
  }
}

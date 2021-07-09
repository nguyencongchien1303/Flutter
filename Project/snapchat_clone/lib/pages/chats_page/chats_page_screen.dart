import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/conversation.dart';
import 'app_bar_chats.dart';
import 'conversation_mess.dart';
import 'stories.dart';

class ChatsPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBarChats(),
      body: Container(
        height: size.height - 200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stories(),
              ConversationMess(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:snapchat_clone/data/chat_detail.dart';
import 'package:snapchat_clone/theme/colors.dart';
import 'get_appbar.dart';

class ChatPageDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var paddingBottom = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: GetAppbar(),
      body: GetBody(size: size, paddingBottom: paddingBottom.bottom),
    );
  }
}

class GetBody extends StatelessWidget {
  const GetBody({
    Key key,
    @required this.size,
    this.paddingBottom,
  }) : super(key: key);

  final Size size;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: size.height * 0.83 - paddingBottom,
          child: ListView(
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 10),
            //       child: ChatBubbles(isMe: true),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 10),
            //       child: ChatBubbles(isMe: false),
            //     ),
            //   ],
            // ),
            children: List.generate(chatDetails.length, (index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ChatBubbles(
                  isMe: chatDetails[index].isMe,
                  message: chatDetails[index].message,
                  avatar: chatDetails[index].avatar,
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}

class ChatBubbles extends StatelessWidget {
  final bool isMe;
  final String avatar, message;
  const ChatBubbles({
    Key key,
    @required this.isMe,
    @required this.avatar,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMe) {
      return Padding(
        padding: const EdgeInsets.only(top: 1.5, bottom: 1.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: bgGrey.withOpacity(0.3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  message,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.headline1.color,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 1.5, bottom: 1.5),
        child: Row(
          children: [
            Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    avatar,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: bgGrey.withOpacity(0.3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  message,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.headline1.color,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}

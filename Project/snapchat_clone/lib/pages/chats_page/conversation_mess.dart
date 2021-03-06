import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snapchat_clone/data/conversation.dart';
import 'package:snapchat_clone/pages/chat_page_detail.dart/chat_page_detail_screen.dart';

class ConversationMess extends StatelessWidget {
  final SlidableController controller;

  const ConversationMess({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: List.generate(
            conversationList.length,
            (index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Slidable(
                      actionPane: SlidableScrollActionPane(),
                      actionExtentRatio: 0.16,
                      child: OnTapConversation(size: size, index: index),
                      secondaryActions: [
                        SlideAction(
                          child: Text("Mute"),
                          color: Theme.of(context).backgroundColor,
                          onTap: () {},
                        ),
                        SlideAction(
                          child: Text("Delete"),
                          color: Color(0xFFEC4F5A),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class OnTapConversation extends StatelessWidget {
  const OnTapConversation({
    Key key,
    @required this.index,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final slidable = Slidable.of(context);
        final isClose = slidable.renderingMode == SlidableRenderingMode.none;
        if (isClose) {
          slidable.open();
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => ChatPageDetailScreen()));
        }
        slidable.close();
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Stack(
              children: [
                Container(
                  width: (size.width - 20) * 0.15,
                  height: (size.width - 20) * 0.15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(conversationList[index].avatar),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Positioned(
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: 15,
                //     height: 15,
                //     decoration: BoxDecoration(
                //       color: Color(0xFF66BB6A),
                //       shape: BoxShape.circle,
                //       border: Border.all(
                //         color: Theme.of(context).scaffoldBackgroundColor,
                //         width: 3,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Container(
            width: (size.width - 20) * 0.90 - 10,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        conversationList[index].name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).textTheme.headline1.color,
                        ),
                      ),
                      Row(
                        children: [
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: size.width - 200),
                            child: Text(
                              conversationList[index].lastMessage,
                              style: TextStyle(
                                fontSize: 14,
                                color:
                                    Theme.of(context).textTheme.headline3.color,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            ' ??? ',
                            style: TextStyle(
                              fontSize: 14,
                              color:
                                  Theme.of(context).textTheme.headline3.color,
                            ),
                          ),
                          Text(
                            conversationList[index].lastMessageTime,
                            style: TextStyle(
                              fontSize: 14,
                              color:
                                  Theme.of(context).textTheme.headline3.color,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: -7,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/camera_outline.svg',
                      color: Theme.of(context).textTheme.headline3.color,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

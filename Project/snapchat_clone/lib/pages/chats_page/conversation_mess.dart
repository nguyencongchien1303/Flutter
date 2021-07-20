import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snapchat_clone/data/conversation.dart';

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
                      // closeOnScroll: false,
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
                          onTap: () {
                            print("objectb");
                          },
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
        }
        slidable.close();
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(conversationList[index].avatar),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Color(0xFF66BB6A),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width - 80,
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
                          fontSize: 20,
                          color: Theme.of(context).textTheme.headline1.color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: size.width - 230),
                            child: Text(
                              conversationList[index].lastMessage,
                              style: TextStyle(
                                fontSize: 14,
                                color:
                                    Theme.of(context).textTheme.headline1.color,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            ' • ',
                            style: TextStyle(
                              fontSize: 14,
                              color:
                                  Theme.of(context).textTheme.headline1.color,
                            ),
                          ),
                          Text(
                            conversationList[index].lastMessageTime,
                            style: TextStyle(
                              fontSize: 14,
                              color:
                                  Theme.of(context).textTheme.headline1.color,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/camera_outline.svg',
                      color: Theme.of(context).textTheme.headline1.color,
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

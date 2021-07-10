import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';
import 'package:snapchat_clone/models/user_story_model.dart';
import 'story_page_detail/story_page_detail.dart';

class StoriesPageScreen extends StatelessWidget {
  final List<StoriesDataModel> stories;

  const StoriesPageScreen({Key key, this.stories}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(
                stories_data.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(_createRoute(stories[index].videoUrl));
                    },
                    child: Container(
                      width: (size.width - 30) / 2,
                      height: 300,
                      child: Stack(
                        children: [
                          Container(
                            width: (size.width - 30) / 2,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                    stories[index].detail[0].imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: (size.width - 15) / 2,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.black.withOpacity(0.25),
                                    Colors.black.withOpacity(0),
                                  ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundImage: NetworkImage(
                                                stories[index].avatar),
                                          ),
                                        ),
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: new Border.all(
                                            color: Colors.green,
                                            width: 2.5,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15.0),
                                        child: Container(
                                          width: 20.0,
                                          height: 20.0,
                                          child: Center(
                                              child: Text(
                                            stories_data[index]
                                                .detail
                                                .length
                                                .toString(),
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    stories[index].name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

Route _createRoute(String videoUrl) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        StoryPageDetailScreen(videoUrl: videoUrl),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            SizedBox(width: 20),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).backgroundColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 33,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 75,
                    child: Align(
                        child: Text(
                      'Your Story',
                      overflow: TextOverflow.ellipsis,
                    )),
                  )
                ],
              ),
            ),
            Row(
              children: List.generate(
                stories_data.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          child: Stack(
                            children: <Widget>[
                              stories_data[index].detail.length > 0
                                  ? Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.blueAccent,
                                              width: 3)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Container(
                                          width: 75,
                                          height: 75,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      stories_data[index]
                                                          .detail[0]
                                                          .imageUrl),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    )
                                  : Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  stories_data[index].avatar),
                                              fit: BoxFit.cover)),
                                    ),
                              stories_data[index].isOnline
                                  ? Positioned(
                                      top: 38,
                                      left: 42,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF66BB6A),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Color(0xFFFFFFFF),
                                                width: 3)),
                                      ),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 75,
                          child: Align(
                            child: Text(
                              stories_data[index].name,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

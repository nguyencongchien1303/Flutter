import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = new TextEditingController();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                cursorColor: Color(0xFF000000),
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF8E8E93),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Color(0xFF8E8E93)),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 5),
                  child: Column(
                    children: [
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
                      Container(
                        width: 75,
                        child: Align(
                          child: Text(
                            'Your Story',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.headline1.color,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: List.generate(
                    stories_data.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
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
                                                      stories_data[index]
                                                          .avatar),
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
                            Container(
                              width: 65,
                              child: Align(
                                child: Text(
                                  stories_data[index].name,
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .headline1
                                        .color,
                                  ),
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
        ],
      ),
    );
  }
}

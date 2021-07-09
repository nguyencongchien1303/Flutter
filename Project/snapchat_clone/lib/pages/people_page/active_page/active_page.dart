import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';

class ActivePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: List.generate(stories_data.length, (index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                                image: NetworkImage(stories_data[index].avatar),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: Color(0xFF66BB6A),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  width: 3,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        stories_data[index].name,
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).textTheme.headline1.color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 80.0, right: 10.0),
                  child: Divider(
                    color: Colors.grey,
                    height: 20,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';
import 'package:snapchat_clone/pages/people_page/active_page/active_page.dart';
import 'package:snapchat_clone/pages/people_page/stories_page/stories_page.dart';
import 'package:snapchat_clone/theme/colors.dart';

import 'app_bar.dart';

class PeoplePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBarPeople(),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  elevation: 0,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(20),
                    child: Container(
                      height: 30,
                      child: TabBar(
                        unselectedLabelColor: Colors.grey.withOpacity(0.5),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        tabs: [
                          Tab(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "active (${stories_data.length})".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "stories (100)".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(top: 20),
            height: size.height - 170,
            child: TabBarView(
              children: [
                ActivePageScreen(),
                StoriesPageScreen(stories: stories_data),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

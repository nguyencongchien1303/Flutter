import 'package:flutter/material.dart';

class StoryPageDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(20),
                  child: Container(
                    height: 30,
                    child: TabBar(
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        gradient:
                            LinearGradient(colors: [Colors.grey, Colors.grey]),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.redAccent,
                      ),
                      tabs: [
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("active".toUpperCase()),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("stories".toLowerCase()),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.apps),
            Icon(Icons.movie),
          ],
        ),
      ),
    );
  }
}

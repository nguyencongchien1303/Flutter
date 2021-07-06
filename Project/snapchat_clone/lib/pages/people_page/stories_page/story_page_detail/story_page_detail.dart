import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/theme/colors.dart';

class StoryPageDetailScreen extends StatefulWidget {
  final String videoUrl;

  const StoryPageDetailScreen({Key key, this.videoUrl}) : super(key: key);

  @override
  _StoryPageDetailScreenState createState() => _StoryPageDetailScreenState();
}

class _StoryPageDetailScreenState extends State<StoryPageDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}

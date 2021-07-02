import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:snapchat_clone/theme/colors.dart';

import 'app_bar.dart';

class StoriesPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStories(),
      body: getBody(),
    );
  }

  Widget getBody() {}
}

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:snapchat_clone/data/chat.dart';
import 'package:snapchat_clone/theme/colors.dart';

import 'get_appbar.dart';

class ChatPageDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GetAppbar(),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants.dart';

class NoteBottom extends StatelessWidget {
  final bool dark;
  const NoteBottom({Key key, this.dark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: kDefaultPaddin / 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "By sign in or sign up, you agree to ",
                style: TextStyle(
                    color: !dark ? Colors.white : kBackgroundColorDarkMode),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Sutrix’s Terms ",
                  style: TextStyle(
                      color: kBackgroundColor, fontWeight: FontWeight.bold),
                ),
              ),
              Text("and",
                  style: TextStyle(
                      color: !dark ? Colors.white : kBackgroundColorDarkMode)),
            ],
          ),
          Container(
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Private Policy",
                style: TextStyle(
                    color: kBackgroundColor, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

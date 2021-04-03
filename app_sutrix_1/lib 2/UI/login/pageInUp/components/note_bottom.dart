import 'package:flutter/material.dart';

import '../../../../constants.dart';

class NoteBottom extends StatelessWidget {
  const NoteBottom({Key key}) : super(key: key);

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
                style: TextStyle(color: kBackgroundColorDarkMode),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Sutrix’s Terms ",
                  style: TextStyle(
                      color: kBackgroundColor, fontWeight: FontWeight.bold),
                ),
              ),
              Text("and", style: TextStyle(color: kBackgroundColorDarkMode)),
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

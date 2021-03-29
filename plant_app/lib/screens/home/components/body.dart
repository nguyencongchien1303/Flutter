import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import 'header_with_searchbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            text: "Recomended",
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(
            text: "Recomended",
            press: () {},
          ),
          RecomendsPlants(),
        ],
      ),
    );
  }
}

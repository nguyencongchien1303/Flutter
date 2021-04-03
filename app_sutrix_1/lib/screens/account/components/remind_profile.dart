import 'package:flutter/material.dart';

import '../../../constants.dart';

class RemidProfile extends StatelessWidget {
  final bool darkMode;
  const RemidProfile({Key key, this.darkMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
        top: size.height * 0.405,
        left: 0,
        right: 0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          height: size.height * 0.15,
          decoration: BoxDecoration(
              color: darkMode == null || !darkMode
                  ? Colors.white
                  : Color(0xFF212121),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      "Remind",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: darkMode == null || !darkMode
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                    child: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: kBackgroundColor,
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The app will push a notification to remind",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: darkMode == null || !darkMode
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "you update expenditures at every ",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          color: darkMode == null || !darkMode
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          "8:00",
                          style: TextStyle(
                            color: kBackgroundColor,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

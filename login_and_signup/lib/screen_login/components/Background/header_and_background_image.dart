import 'package:flutter/material.dart';

class HeaderAndBackgroundImage extends StatelessWidget {
  const HeaderAndBackgroundImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        height: size.height * 0.37,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.fill),
        ),
        child: Container(
          padding: EdgeInsets.only(
              top: size.height * 0.11, left: size.width * 0.054),
          color: Color(0xFF3b5999).withOpacity(0.85),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: "Welcome to",
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 2,
                      color: Colors.yellow[700],
                    ),
                    children: [
                      TextSpan(
                        text: " Rizona",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow[700],
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Signup to Continue",
                style: TextStyle(
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

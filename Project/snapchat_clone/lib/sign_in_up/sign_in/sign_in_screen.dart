import 'package:flutter/material.dart';
import 'package:snapchat_clone/Animations/FadeAnimation.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(
                1.2,
                GradientText(
                  "Login",
                  colors: [
                    Color(0xFFfeda75),
                    Color(0xFFfa7e1e),
                    Color(0xFFd62976),
                    Color(0xFF962fbf),
                    Color(0xFF4f5bd5),
                  ],
                  style: TextStyle(
                    color: Theme.of(context).textTheme.headline1.color,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            FadeAnimation(
                1.5,
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey[300]),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(.8)),
                            hintText: "Email or Phone number",
                          ),
                          style: TextStyle(
                            color: Theme.of(context).textTheme.headline1.color,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(.8)),
                            hintText: "Password",
                          ),
                          style: TextStyle(
                            color: Theme.of(context).textTheme.headline1.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 40,
            ),
            FadeAnimation(
                1.8,
                Center(
                  child: Container(
                    width: 120,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFfeda75),
                          Color(0xFFfa7e1e),
                          Color(0xFFd62976),
                          Color(0xFF962fbf),
                          Color(0xFF4f5bd5),
                        ],
                      ),
                    ),
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/Animations/FadeAnimation.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:snapchat_clone/pages/chats_page/stories.dart';
import 'package:snapchat_clone/pages/root_app.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 10),
            FadeAnimation(
              1.0,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "English",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            FadeAnimation(
              1.2,
              Center(
                child: GradientText(
                  "Chats Pro",
                  colors: [
                    // Color(0xFFfeda75),
                    // Color(0xFFfa7e1e),
                    // Color(0xFFd62976),
                    // Color(0xFF962fbf),
                    // Color(0xFF4f5bd5),
                    Color(0xFF7BD5F5),
                    Color(0xFF787FF6),
                    Color(0xFF4ADEDE),
                  ],
                  style: TextStyle(
                    color: Theme.of(context).textTheme.headline1.color,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            FadeAnimation(
              1.4,
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xFF4267B2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        FontAwesomeIcons.facebookSquare,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      "Continue with Facebook",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            FadeAnimation(
              1.6,
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Row(
                  children: [
                    Expanded(
                      child: new Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 15.0),
                          child: Divider(
                            color: Colors.grey.withOpacity(.8),
                            height: 5,
                          )),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(color: Colors.grey.withOpacity(.8)),
                    ),
                    Expanded(
                      child: new Container(
                          margin:
                              const EdgeInsets.only(left: 15.0, right: 10.0),
                          child: Divider(
                            color: Colors.grey.withOpacity(.8),
                            height: 10,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            FadeAnimation(
              1.8,
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: Column(
                  children: [
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
              ),
            ),
            FadeAnimation(
              2.0,
              Center(
                child: Container(
                  height: 50,
                  width: 150,
                  child: UnicornOutlineButton(
                    strokeWidth: 2,
                    radius: 30,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF7BD5F5),
                        Color(0xFF787FF6),
                        Color(0xFF4ADEDE),
                      ],
                    ),
                    child: Center(
                      child: GradientText(
                        "Login",
                        colors: [
                          Color(0xFF7BD5F5),
                          Color(0xFF787FF6),
                          Color(0xFF4ADEDE),
                        ],
                        style: TextStyle(
                          color: Theme.of(context).textTheme.headline1.color,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Get.to(RootApp());
                    },
                  ),
                ),
              ),
            ),
            FadeAnimation(
              2.2,
              Center(
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.headline1.color),
                ),
              ),
            ),
            SizedBox(height: 100),
            FadeAnimation(
              2.4,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Theme.of(context)
                          .textTheme
                          .headline1
                          .color
                          .withOpacity(0.8),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      " Sign up",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

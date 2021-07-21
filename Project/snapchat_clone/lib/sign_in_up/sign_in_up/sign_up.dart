import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:snapchat_clone/Animations/FadeAnimation.dart';
import 'package:snapchat_clone/controller/switch_in_up_controller.dart';
import 'package:snapchat_clone/pages/chats_page/stories.dart';
import 'package:snapchat_clone/pages/root_app.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    Key key,
    @required this.controller_switch_in_up,
  }) : super(key: key);

  final ControllerSwitchInUp controller_switch_in_up;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FadeAnimation(
          1.0,
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Column(
              children: [
                FadeAnimation(
                  1.0,
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
                        hintText: "Name".tr,
                      ),
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  1.2,
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
                        hintText: "Email".tr,
                      ),
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  1.4,
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
                        hintText: "Phone".tr,
                      ),
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  1.6,
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
                        hintText: "Password".tr,
                      ),
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  1.8,
                  Container(
                    decoration: BoxDecoration(),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle:
                            TextStyle(color: Colors.grey.withOpacity(.8)),
                        hintText: "Confirm Password".tr,
                      ),
                      style: TextStyle(
                        color: Theme.of(context).textTheme.headline1.color,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        FadeAnimation(
          1.7,
          Center(
            child: Container(
              height: 50,
              width: 200,
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
                    "Create new account".tr,
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
        SizedBox(height: MediaQuery.of(context).size.height * 0.017),
        FadeAnimation(
          2.0,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?".tr,
                style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .headline1
                      .color
                      .withOpacity(0.8),
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller_switch_in_up.changeStatus(false);
                },
                child: Text(
                  " Login".tr,
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
    );
  }
}

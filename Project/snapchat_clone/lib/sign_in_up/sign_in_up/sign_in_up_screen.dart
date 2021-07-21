import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/Animations/FadeAnimation.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:snapchat_clone/controller/change_language.dart';
import 'package:snapchat_clone/controller/switch_in_up_controller.dart';
import 'package:snapchat_clone/languages/localization_service.dart';
import 'sign_up.dart';

import 'sign_in.dart';

class SignInScreen extends StatelessWidget {
  final controller_switch_in_up = Get.put(ControllerSwitchInUp());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 10),
                  FadeAnimation(
                    1.0,
                    ChangeLanguage(),
                  ),
                  FadeAnimation(
                    1.2,
                    Center(
                      child: GradientText(
                        "Chats Pro",
                        colors: [
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
                            "Continue with Facebook".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
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
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 15.0),
                                child: Divider(
                                  color: Colors.grey.withOpacity(.8),
                                  height: 5,
                                )),
                          ),
                          Text(
                            "OR".tr,
                            style:
                                TextStyle(color: Colors.grey.withOpacity(.8)),
                          ),
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(
                                    left: 15.0, right: 10.0),
                                child: Divider(
                                  color: Colors.grey.withOpacity(.8),
                                  height: 10,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.5,
              child: FadeAnimation(
                1.8,
                GetBuilder<ControllerSwitchInUp>(
                  builder: (value) {
                    return (controller_switch_in_up.sign_up.value == false)
                        ? SignInPage(
                            controller_switch_in_up: controller_switch_in_up)
                        : SignUpPage(
                            controller_switch_in_up: controller_switch_in_up);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChangeLanguage extends StatelessWidget {
  final controllerChangeLanguage = Get.put(ControllerChangeLanguage());

  @override
  Widget build(BuildContext context) {
    return GetX<ControllerChangeLanguage>(
      builder: (value) {
        return DropdownButton(
          items: _buildDropdownMenuItems(),
          icon: Icon(Icons.arrow_drop_down),
          value: controllerChangeLanguage.valueLang.value,
          onChanged: (String value) {
            controllerChangeLanguage.changeLanguage(value);
            LocalizationService.changeLocale(value);
          },
        );
      },
    );
  }

  List<DropdownMenuItem<String>> _buildDropdownMenuItems() {
    List<DropdownMenuItem<String>> list = [];
    LocalizationService.langs.forEach((key, value) {
      list.add(DropdownMenuItem<String>(
        value: key,
        child: Text(value),
      ));
    });
    return list;
  }
}

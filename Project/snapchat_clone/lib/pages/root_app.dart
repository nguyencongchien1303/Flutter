import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/controller/root_app_controller.dart';
import 'package:snapchat_clone/data/bottom_items.dart';
import 'package:snapchat_clone/theme/colors.dart';

import 'canmera_page/camera_page.dart';
import 'chats_page/chats_page_screen.dart';
import 'discover_page/change_theme.dart';
import 'people_page/people_page_screen.dart';

class RootApp extends StatelessWidget {
  final controllerRootApp = Get.put(ControllerSelectedBottomSheet());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ControllerSelectedBottomSheet>(
        builder: (controller) {
          return IndexedStack(
            index: controller.selected.value,
            children: [
              PeoplePageScreen(),
              ChatsPageScreen(),
              CameraPageScreen(),
              PeoplePageScreen(),
              DiscoverPageScreen(),
            ],
          );
        },
      ),
      bottomSheet: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        width: double.infinity,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: GetBuilder<ControllerSelectedBottomSheet>(
            builder: (value) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  iconItems.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        controllerRootApp.selectedBottomSheet(index);
                      },
                      child: Stack(
                        children: [
                          Container(
                            // color: Colors.red,
                            height: 100,
                            width: 60,
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                SizedBox(
                                  height: 27,
                                  width: 27,
                                  child:
                                      controllerRootApp.selected.value == index
                                          ? SvgPicture.asset(
                                              iconItemsTouch[index],
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline1
                                                  .color,
                                            )
                                          : SvgPicture.asset(
                                              iconItems[index],
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .headline1
                                                  .color,
                                            ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 5,
                            child: Container(
                              width: 23,
                              height: 23,
                              decoration: BoxDecoration(
                                color: Color(0xFFFE294D),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  width: 3,
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                "7",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/controller/root_app_controller.dart';
import 'package:snapchat_clone/data/bottom_items.dart';
import 'package:snapchat_clone/data/stories_page/stories_data.dart';
import 'package:snapchat_clone/pages/profile_page/change_theme.dart';
import 'package:snapchat_clone/theme/colors.dart';

import 'canmera_page/camera_page.dart';
import 'chats_page/chats_page_screen.dart';
import 'people_page/people_page_screen.dart';
import 'search_page/search_page_screen.dart';

class RootApp extends StatelessWidget {
  final controllerRootApp = Get.put(ControllerSelectedBottomSheet());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width - 40;
    return Scaffold(
      body: GetBuilder<ControllerSelectedBottomSheet>(
        builder: (controller) {
          return IndexedStack(
            index: controller.selected.value,
            children: [
              ChatsPageScreen(),
              SearchPageScreen(),
              CameraPageScreen(),
              PeoplePageScreen(),
              ProfilePageScreen()
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      iconItems.length,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            controllerRootApp.selectedBottomSheet(index);
                          },
                          child: Column(
                            children: [
                              Container(
                                width: size / 5,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 27,
                                      width: 27,
                                      child: controllerRootApp.selected.value ==
                                              index
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
                              SizedBox(height: 7),
                              Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFE294D),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: size / 5,
                    child: GestureDetector(
                      onTap: () {
                        controllerRootApp.selectedBottomSheet(4);
                      },
                      child: Column(
                        children: [
                          controllerRootApp.selected.value != 4
                              ? Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      width: 2,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.3),
                                    child: Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  stories_data[0].avatar),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .textTheme
                                          .headline1
                                          .color,
                                      width: 2,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.3),
                                    child: Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  stories_data[0].avatar),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                          // SizedBox(height: 7),
                          // Container(
                          //   width: 5,
                          //   height: 5,
                          //   decoration: BoxDecoration(
                          //     color: Color(0xFFFE294D),
                          //     shape: BoxShape.circle,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

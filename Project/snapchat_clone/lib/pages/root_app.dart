import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/controller/root_app_controller.dart';
import 'package:snapchat_clone/data/bottom_items.dart';
import 'package:snapchat_clone/pages/stories_page/stories_page_screen.dart';
import 'package:snapchat_clone/theme/colors.dart';

class RootApp extends StatelessWidget {
  final controllerRootApp = Get.put(ControllerSelectedBottomSheet());
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: [
          StoriesPageScreen(),
          StoriesPageScreen(),
          StoriesPageScreen(),
          StoriesPageScreen(),
          StoriesPageScreen(),
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(color: Colors.black),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
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
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Icon(
                                iconItems[index],
                                color: controllerRootApp.selected == index
                                    ? colorItems[index]
                                    : white.withOpacity(0.5),
                              ),
                              SizedBox(height: 5),
                              Text(
                                textItems[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: controllerRootApp.selected == index
                                      ? colorItems[index]
                                      : white.withOpacity(0.5),
                                ),
                              )
                            ],
                          ),
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

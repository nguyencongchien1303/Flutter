import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:snapchat_clone/controller/switch_image_image_tag.dart';
import 'package:snapchat_clone/data/profile_image.dart';
import 'package:snapchat_clone/sign_in_up/sign_in_up/sign_in_up_screen.dart';
import 'package:snapchat_clone/theme/theme_service.dart';

class ProfilePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: GetAppbar(),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: GetBody(size: size),
    );
  }
}

class GetBody extends StatelessWidget {
  GetBody({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final controller_switch_image_tag = Get.put(ControllerSwitchImageTag());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: (size.width - 20) * 0.3,
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: Color(0xffC8C8C8),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://scontent.fhan2-2.fna.fbcdn.net/v/t1.6435-9/149208526_2702809756716204_4652106290876094144_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=iabm1ji0aswAX9tDZ_2&_nc_ht=scontent.fhan2-2.fna&oh=664ee47ba1db8f26acce35e9fa8ec1e6&oe=61272E27"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 8,
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff0095f6),
                              border: Border.all(
                                width: 1,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: (size.width - 20) * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "61",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color:
                                    Theme.of(context).textTheme.headline1.color,
                              ),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:
                                    Theme.of(context).textTheme.headline1.color,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "612",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color:
                                    Theme.of(context).textTheme.headline1.color,
                              ),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:
                                    Theme.of(context).textTheme.headline1.color,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "621",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color:
                                    Theme.of(context).textTheme.headline1.color,
                              ),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:
                                    Theme.of(context).textTheme.headline1.color,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Nguyễn Công Chiến",
                style: TextStyle(
                  color: Theme.of(context).textTheme.headline1.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "I ᗩᗰ ᑎOT ᑭEᖇᖴEᑕT ᗷᑌT \nI ᗩᗰ ᒪIᗰITEᗪ EᗪITIOᑎ. \nᗰOOᑎᑕᕼIᒪᗪ 🌙",
                style: TextStyle(
                  color: Theme.of(context).textTheme.headline1.color,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 35,
                width: size.width - 20,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xffC8C8C8),
                  ),
                  borderRadius: BorderRadius.circular(5),
                  // color: Color(0xffFAFAFA),
                ),
                child: Center(
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.headline1.color,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Story Highlinght",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.headline1.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    FontAwesome.angle_down,
                    size: 20,
                    color: Theme.of(context).textTheme.headline1.color,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 0.5,
          width: size.width,
          decoration: BoxDecoration(color: Color(0xffC8C8C8).withOpacity(0.8)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3),
          child: Row(
            children: [
              Container(
                width: size.width * 0.5,
                child: IconButton(
                  splashRadius: 20,
                  icon: GetBuilder<ControllerSwitchImageTag>(
                    builder: (index) {
                      return SvgPicture.asset(
                        'assets/icons/girl.svg',
                        color:
                            controller_switch_image_tag.imageTag.value == false
                                ? Theme.of(context).textTheme.headline1.color
                                : Colors.grey.withOpacity(0.5),
                      );
                    },
                  ),
                  onPressed: () {
                    controller_switch_image_tag.changeStatus(false);
                  },
                ),
              ),
              Container(
                width: size.width * 0.5,
                child: IconButton(
                  splashRadius: 20,
                  icon: GetBuilder<ControllerSwitchImageTag>(
                    builder: (index) {
                      return SvgPicture.asset(
                        'assets/icons/tags.svg',
                        color:
                            controller_switch_image_tag.imageTag.value == true
                                ? Theme.of(context).textTheme.headline1.color
                                : Colors.grey.withOpacity(0.5),
                      );
                    },
                  ),
                  onPressed: () {
                    controller_switch_image_tag.changeStatus(true);
                  },
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            GetBuilder<ControllerSwitchImageTag>(
              builder: (index) {
                return Row(
                  children: [
                    Container(
                      height: 1,
                      width: (size.width * 0.5),
                      decoration: BoxDecoration(
                          color: controller_switch_image_tag.imageTag.value ==
                                  false
                              ? Theme.of(context).textTheme.headline1.color
                              : Colors.transparent),
                    ),
                    Container(
                      height: 1,
                      width: (size.width * 0.5),
                      decoration: BoxDecoration(
                          color:
                              controller_switch_image_tag.imageTag.value == true
                                  ? Theme.of(context).textTheme.headline1.color
                                  : Colors.transparent),
                    ),
                  ],
                );
              },
            ),
            Container(
              height: 0.5,
              width: size.width,
              decoration:
                  BoxDecoration(color: Color(0xffC8C8C8).withOpacity(0.8)),
            ),
          ],
        ),
        SizedBox(height: 3),
        GetBuilder<ControllerSwitchImageTag>(builder: (context) {
          return IndexedStack(
            index: controller_switch_image_tag.indexImage.value,
            children: [
              getImages(size),
              getImageWithTags(size),
            ],
          );
        }),
      ],
    );
  }

  Widget getImages(size) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 3,
      runSpacing: 3,
      children: List.generate(
        images.length,
        (index) {
          return Container(
            height: 150,
            width: (size.width - 6) / 3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(images[index]), fit: BoxFit.cover)),
          );
        },
      ),
    );
  }

  Widget getImageWithTags(size) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 3,
      runSpacing: 3,
      children: List.generate(
        imageWithTags.length,
        (index) {
          return Container(
            height: 150,
            width: (size.width - 6) / 3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageWithTags[index]),
                    fit: BoxFit.cover)),
          );
        },
      ),
    );
  }
}

class GetAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Feather.lock,
                  size: 18,
                  color: Theme.of(context).textTheme.headline1.color,
                ),
                SizedBox(width: 10),
                Text(
                  "_pisces_13_",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.headline1.color,
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  splashRadius: 15,
                  icon: Icon(
                    AntDesign.plus,
                    color: Theme.of(context).textTheme.headline1.color,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  splashRadius: 15,
                  icon: SvgPicture.asset(
                    'assets/icons/menu.svg',
                    color: Theme.of(context).textTheme.headline1.color,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

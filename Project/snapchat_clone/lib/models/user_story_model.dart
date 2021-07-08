import 'dart:ffi';

import 'package:flutter/material.dart';

class StoryDetailModel {
  final String image;
  final Duration duration;

  StoryDetailModel(
    this.image,
    this.duration,
  );
}

class StoriesDataModel {
  final String avatar;
  final String img;
  final String name;
  final String nickname;
  final String date;
  final String videoUrl;
  final List<StoryDetailModel> detail;

  StoriesDataModel(
    this.avatar,
    this.img,
    this.name,
    this.nickname,
    this.date,
    this.videoUrl,
    this.detail,
  );

  // const StoriesData({
  // });
}

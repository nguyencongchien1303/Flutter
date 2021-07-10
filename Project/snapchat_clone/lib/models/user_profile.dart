import 'package:snapchat_clone/models/user_story_model.dart';

class UserProfileModel {
  final String name;
  final String avatar;
  final List<StoryDetailModel> detailStory;

  UserProfileModel(
    this.name,
    this.avatar,
    this.detailStory,
  );
}

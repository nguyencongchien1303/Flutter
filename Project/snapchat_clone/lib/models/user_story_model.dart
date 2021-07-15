class StoryDetailModel {
  final String imageUrl;
  final Duration duration;

  StoryDetailModel(
    this.imageUrl,
    this.duration,
  );
}

class StoriesDataModel {
  final String avatar;
  final String name;
  final String date;
  final String videoUrl;
  final bool isOnline;
  final List<StoryDetailModel> detail;

  StoriesDataModel(
    this.avatar,
    this.name,
    this.date,
    this.videoUrl,
    this.isOnline,
    this.detail,
  );
}

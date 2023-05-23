import 'package:flutter_video_app/features/features.dart';

class LocalVideoModel {
  String name;
  String videoUrl;
  int likes;
  int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json["name"] ?? 'No caption',
        videoUrl: json["videoUrl"],
        likes: json["likes"] ?? 0,
        views: json["views"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views,
      };

  VideoPost toEntity() => VideoPost(
        caption: name,
        videoUrl: videoUrl,
        likes: likes,
        views: views,
      );
}

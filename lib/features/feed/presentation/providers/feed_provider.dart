import 'package:flutter/material.dart';

import 'package:flutter_video_app/features/features.dart';

class FeedProvider extends ChangeNotifier {
  bool isLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));
    videos.addAll(videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toEntity())
        .toList());
    isLoading = false;
    notifyListeners();
  }
}

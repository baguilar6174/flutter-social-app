import 'package:flutter/material.dart';

import 'package:flutter_video_app/features/features.dart';

class FeedProvider extends ChangeNotifier {
  bool isLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // TODO: load videos
    notifyListeners();
  }
}

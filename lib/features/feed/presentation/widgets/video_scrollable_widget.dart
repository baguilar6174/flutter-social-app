import 'package:flutter/material.dart';

import 'package:flutter_video_app/features/features.dart';

class VideoScrollableWidget extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableWidget({
    super.key,
    required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost video = videos[index];
        return Stack(
          children: [
            Positioned(
              bottom: 25,
              right: 25,
              child: VideoButtons(video: video),
            ),
          ],
        );
      },
    );
  }
}

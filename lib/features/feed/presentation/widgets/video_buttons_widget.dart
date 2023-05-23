import 'package:flutter/material.dart';
import 'package:flutter_video_app/features/features.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({
    super.key,
    required this.video,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          value: video.likes,
          icon: Icons.favorite,
          color: Colors.redAccent,
        ),
        CustomIconButton(
          value: video.likes,
          icon: Icons.remove_red_eye_outlined,
          color: Colors.white,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

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
        const SizedBox(height: 20),
        CustomIconButton(
          value: video.likes,
          icon: Icons.remove_red_eye_outlined,
          color: Colors.white,
        ),
        const SizedBox(height: 20),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const CustomIconButton(
            value: 0,
            icon: Icons.play_circle_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

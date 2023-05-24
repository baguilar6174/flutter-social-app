import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullscreenPlayer extends StatefulWidget {
  final String url;
  final String caption;

  const FullscreenPlayer({
    super.key,
    required this.url,
    required this.caption,
  });

  @override
  State<FullscreenPlayer> createState() => _FullscreenPlayerState();
}

class _FullscreenPlayerState extends State<FullscreenPlayer> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    //controller = VideoPlayerController.asset(widget.url)..setVolume(0)..setLooping(true)..play();
    controller = VideoPlayerController.asset(widget.url);
    controller.setVolume(0);
    controller.setLooping(true);
    controller.play();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return FutureBuilder(
      future: controller.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        return GestureDetector(
          onTap: () {
            if (controller.value.isPlaying) {
              controller.pause();
              return;
            }
            controller.play();
          },
          child: AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: Stack(
              children: [
                VideoPlayer(controller),
                const Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black87,
                        ],
                        stops: [0.8, 1.0],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      widget.caption,
                      maxLines: 2,
                      style: titleStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_video_app/features/features.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FeedProvider>();

    return Scaffold(
      body: provider.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : VideoScrollableWidget(videos: provider.videos),
    );
  }
}

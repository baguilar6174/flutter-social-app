import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_video_app/utils/utils.dart';
import 'package:flutter_video_app/features/features.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FeedProvider()..loadNextPage(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        title: 'Social app',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().theme(),
        home: const FeedPage(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:video_trimmer_flutter_getx/page/YoutubeDownloaderPage.dart';

import 'util/Injector.dart';


void main() async {
  await baseDio();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Downloader',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: YoutubeDownloaderPage(),
    );
  }
}

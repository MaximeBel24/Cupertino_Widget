import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learn_cupertino_project/adaptive_page.dart';
import 'package:learn_cupertino_project/android_page.dart';
import 'package:learn_cupertino_project/iOS_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;
    bool isOS = (platform != TargetPlatform.iOS);
    return isOS ? iOSBase(platform: platform) : androidBase(platform: platform);
  }

  CupertinoApp iOSBase({required TargetPlatform platform}) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: Colors.red
      ),
      title: 'Learn Cupertino',
      home: AdaptivePage(platform: platform,),
    );
  }

  MaterialApp androidBase({required TargetPlatform platform}) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      title: 'Learn Cupertino',
      home: AdaptivePage(platform: platform,),
    );
  }
}

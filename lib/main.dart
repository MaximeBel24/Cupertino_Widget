import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return isOS ? iOSBase() : androidBase();
  }

  CupertinoApp iOSBase() {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: Colors.red
      ),
      title: 'Learn Cupertino',
      home: iOSPage(

      ),
    );
  }

  MaterialApp androidBase() {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      title: 'Learn Cupertino',
      home: AndroidPage(),
    );
  }
}

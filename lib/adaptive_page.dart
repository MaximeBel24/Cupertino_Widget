import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptivePage extends StatefulWidget{

  final TargetPlatform platform;

  AdaptivePage({required this.platform});

  @override
  AdaptivePageState createState() => AdaptivePageState();

}

class AdaptivePageState extends State<AdaptivePage> {

  bool loveFlutter = true;

  @override
  Widget build(BuildContext context) {
    return scaffold();
  }

  bool isiOS() => (widget.platform != TargetPlatform.iOS);

  Widget scaffold() {
    return (isiOS())
        ? CupertinoPageScaffold(navigationBar: navBar(),child: body())
        : Scaffold(appBar: appBar(),body: body(),);
  }

  AppBar appBar() {
    return AppBar(title: const Text("Notre design sous Android"),);
  }

  CupertinoNavigationBar navBar() {
    return CupertinoNavigationBar(middle: Text("Notre design sous iOS"), backgroundColor: Colors.red,);
  }

  Widget body() {
    return Column(
      children: [
        button()
      ],
    );
  }

  Widget button() {
    return (isiOS())
        ? CupertinoButton(child: textButton(), onPressed: onButtonPressed,color: Colors.red,)
        : ElevatedButton(onPressed: onButtonPressed, child: textButton());
  }
  
  Text textButton() {
    return Text((loveFlutter) ? "I love Flutter" : "Vive Elden Ring");
  }

  void onButtonPressed() {
    setState(() {
      loveFlutter = !loveFlutter;
    });
  }
}


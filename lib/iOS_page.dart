import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iOSPage extends StatefulWidget{

  @override
  iOSState createState() => iOSState();
}

class iOSState extends State<iOSPage> {

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Design sous iOS"),
        leading: Icon(Icons.source),
      ),
        child: Text("Je suis Cupertino")
    );
  }
}
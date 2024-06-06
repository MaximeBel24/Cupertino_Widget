import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AndroidPage extends StatefulWidget {

  @override
  AndroidState createState() => AndroidState();
}

class AndroidState extends State<AndroidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notre design sous Android"),
      ),
    );
  }
}
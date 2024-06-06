import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AndroidPage extends StatefulWidget {

  @override
  AndroidState createState() => AndroidState();
}

class AndroidState extends State<AndroidPage> {

  bool loveFlutter = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notre design sous Android"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {

              },
              child: Text((loveFlutter) ? "I Love Flutter" : "Vive Elden Ring")
          )
        ],
      ),
    );
  }
}
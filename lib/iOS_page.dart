import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iOSPage extends StatefulWidget{

  @override
  iOSState createState() => iOSState();
}

class iOSState extends State<iOSPage> {

  bool loveIt = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Design sous iOS"),
        leading: Icon(Icons.source),
        backgroundColor: Colors.red,
      ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisSize: MainAxisSize.max,
          children: [
            CupertinoButton(
              color: Colors.red,
                child: Text((loveIt) ? "I Love Flutter " : "Vive Elden Ring"),
                onPressed: () {
                  setState(() {
                    loveIt = !loveIt;
                  });
                }
            )
          ],
        )
    );
  }
}
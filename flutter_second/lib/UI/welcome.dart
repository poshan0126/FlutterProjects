import 'package:flutter/material.dart';



class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.lightBlueAccent,
      child: new Center(
        child: new Text(
          "My name is POshan Pandey.",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontSize: 34),
        ),
      ),
    );
  }
}
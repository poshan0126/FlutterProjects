import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new Material(
    color: Colors.lightBlueAccent,
    child: Center(
      child: Text(
        "Hello Poshan!",
        textDirection: TextDirection.ltr,
        style: new TextStyle(
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
          letterSpacing: 10,
        ),
      ),
    ),
  ));
}

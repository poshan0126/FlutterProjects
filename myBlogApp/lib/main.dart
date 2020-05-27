import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(MyBlogApp());
}

class MyBlogApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My Blog App', home: HomePage());
  }
}

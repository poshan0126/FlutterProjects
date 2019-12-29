import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<MainPage> {
  int srj = 1;

  void _incrementCounter() {
    setState(() {
      srj++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("works fine"),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.people),
              title: Text(srj.toString()),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Image.network('https://picsum.photos/250?image=9'),
              title: Text('Poshan'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          onPressed: _incrementCounter,
        ),
      ),
    );
  }
}

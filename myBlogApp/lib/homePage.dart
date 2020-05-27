import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:async/async.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Blog App'),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.note_add),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Poshan PAndey"),
            accountEmail: Text("poshan0126@gmail.com"),
            decoration: BoxDecoration(color: Colors.blueGrey),
          ),
          ListTile(
              title: Text("About Us"),
              leading: Icon(
                Icons.accessibility,
                color: Colors.blueGrey,
              )),
          ListTile(
              title: Text("Trending"),
              leading: Icon(
                Icons.trending_up,
                color: Colors.blueGrey,
              )),
          ListTile(
              title: Text("Exit"),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.blueGrey,
              ),
              onTap: () {
                Navigator.of(context).pop();
              })
        ],
      )),
    );
  }
}

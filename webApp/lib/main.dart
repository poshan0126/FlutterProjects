import 'package:flutter/material.dart';
import 'package:webApp/widgets/my_navbar.dart';

void main() => runApp(MyWebApp());

class MyWebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          NavBar(),
          Container(
            child: Row(
              children: [
                Expanded(
                    flex: 7,
                    child: Container(
                      child: Text('My name is Poshan Pandey.'),
                      color: Colors.redAccent,
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      child: Text('My name is Poshan Pandey.'),
                      color: Colors.black87,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

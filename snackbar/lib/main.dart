import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snackbar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SnackbarClass(title: 'Snack Bar'),
    );
  }
}

class SnackbarClass extends StatefulWidget {
  SnackbarClass({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SnackbarClass createState() => _SnackbarClass();
}

class _SnackbarClass extends State<SnackbarClass> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Builder(builder: (context){
        SnackBar mySnackbar = SnackBar(content: Text(widget.title),);
        Scaffold.of(context).showSnackBar(mySnackbar);


    },
      ),

    );
  }
}

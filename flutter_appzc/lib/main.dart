import 'package:flutter/material.dart';
void main()=> runApp(FeedbackDetailsScreen());
class FeedbackDetailsScreen extends StatefulWidget{
  static const routeName = '/details';
  _FeedbackDetailsScreenState createState() => _FeedbackDetailsScreenState();
}
class _FeedbackDetailsScreenState extends State<FeedbackDetailsScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Details',style: TextStyle(fontFamily: 'Roboto',
        ),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[Colors.blue, Colors.lightBlueAccent]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(

                child:Column(
                  children: <Widget>[
                    Expanded(child: SizedBox(
                        height:200,
                        child:Text("test")),)
                  ],
                )
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("This is test")

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      alignment: Alignment.center,
      color: Colors.greenAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Hello item1!", textDirection: TextDirection.ltr,
            style: TextStyle(fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 34,
                color: Colors.red),),
          new Text("Hello item2!", textDirection: TextDirection.ltr,
            style: TextStyle(fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 34,
                color: Colors.red),),
          new Text("Hello item3!", textDirection: TextDirection.ltr,
            style: TextStyle(fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 34,
                color: Colors.red),),
          new Text("Hello itme4!", textDirection: TextDirection.ltr,
            style: TextStyle(fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 34,
                color: Colors.red),),
          new Container(
              color: Colors.blueAccent.shade200,
              alignment: Alignment.bottomLeft,
              child: new Text("Hello child!", textDirection: TextDirection.ltr,
                style: TextStyle(fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 34,
                    color: Colors.red),),
          )
        ],
      ),
//      child : new Text("Hello Container!",textDirection: TextDirection.ltr,
//      style: TextStyle(fontWeight: FontWeight.w900,fontStyle: FontStyle.italic,fontSize: 34,color: Colors.red))
    );
  }

}
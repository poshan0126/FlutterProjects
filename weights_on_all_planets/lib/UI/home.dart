import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  final TextEditingController _weightController = new TextEditingController();

  bool checkboxValueA = true;
  bool checkboxValueB = false;
  bool checkboxValueC;
  int radioValue;

  bool switchValue = false;
  double _finalResult = 0.0;
  String _planetName = "";

  void handleRadioValueChanged(int value) {
    /*
    Source: https://www.livescience.com/33356-weight-on-planets-mars-moon.html
      Mercury: 0.38
Venus: 0.91
Earth: 1.00
Mars: 0.38
Jupiter: 2.34
Saturn: 1.06
Uranus: 0.92
Neptune: 1.19
Pluto: 0.06
     */
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          _finalResult = calculateWeight(_weightController.text, 0.38);
          _planetName =
              " Your weight in Mercury is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 1:
          _finalResult = calculateWeight(_weightController.text, 0.91);
          _planetName =
              "Your weight in Venus is  ${_finalResult.toStringAsFixed(1)}";

          break;
        case 2:
          _finalResult = calculateWeight(_weightController.text, 1.00);
          _planetName =
              "Your weight in Earth is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 3:
          _finalResult = calculateWeight(_weightController.text, 0.38);
          _planetName =
              " Your weight in Mars is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 4:
          _finalResult = calculateWeight(_weightController.text, 2.34);
          _planetName =
              " Your weight in Jupiter is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 5:
          _finalResult = calculateWeight(_weightController.text, 1.06);
          _planetName =
              " Your weight in Saturn is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 6:
          _finalResult = calculateWeight(_weightController.text, 0.92);
          _planetName =
              " Your weight in Uranus is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 7:
          _finalResult = calculateWeight(_weightController.text, 1.19);
          _planetName =
              " Your weight in Neptune is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 8:
          _finalResult = calculateWeight(_weightController.text, 0.06);
          _planetName =
              " Your weight in Pluto is ${_finalResult.toStringAsFixed(1)}";

          break;
        default:
          print("Nothing selected!");
      }

//      print("Value is ${radioValue.toString()}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Weight on Planets"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(150, 89, 230, 248),
//        backgroundColor: Colors.lightBlueAccent,
      ),
//      backgroundColor: Colors.blue.shade100,
      body: new Container(
        alignment: Alignment.topCenter,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('assets/images/play.jpg'),
            fit: BoxFit.cover,
          )
        ),
        child: new ListView(
          padding: const EdgeInsets.all(1.5),
          children: <Widget>[
            new Image.asset(
              'images/planet.png',
              height: 133.0,
              width: 200.0,
            ),
            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new Text(
                    _weightController.text.isEmpty
                        ? ""
                            ""
                            ""
                            ""
                            ""
                        : _planetName + " lbs",
                    style: new TextStyle(
                        color: Colors.brown,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  new TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: 'Enter your Weight on Earth',
                        hintText: 'In pounds',
                        icon: new Icon(Icons.person_outline)),
                  ),

                  new Padding(padding: new EdgeInsets.all(5.0)),
                  //three toggle buttons
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio<int>(
                              activeColor: Colors.lightGreenAccent,
                              value: 0,
                              groupValue: radioValue,
                              onChanged: handleRadioValueChanged),
                          new Text(
                            "Mercury",
                            style: new TextStyle(
                                color: Colors.black, fontSize: 27),
                          ),
                          new Radio<int>(
                              activeColor: Colors.lightGreenAccent,
                              value: 1,
                              groupValue: radioValue,
                              onChanged: handleRadioValueChanged),
                          new Text(
                            "Venus",
                            style: new TextStyle(
                                color: Colors.black, fontSize: 27),
                          ),
                          new Radio<int>(
                              activeColor: Colors.lightGreenAccent,
                              value: 2,
                              groupValue: radioValue,
                              onChanged: handleRadioValueChanged),
                          new Text(
                            "Earth",
                            style: new TextStyle(
                                color: Colors.black, fontSize: 27),
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio<int>(
                              activeColor: Colors.lightGreenAccent,
                              value: 3,
                              groupValue: radioValue,
                              onChanged: handleRadioValueChanged),
                          new Text(
                            "Mars",
                            style: new TextStyle(
                                color: Colors.black, fontSize: 27),
                          ),
                          new Radio<int>(
                              activeColor: Colors.lightGreenAccent,
                              value: 4,
                              groupValue: radioValue,
                              onChanged: handleRadioValueChanged),
                          new Text(
                            "Jupiter",
                            style: new TextStyle(
                                color: Colors.black, fontSize: 27),
                          ),
                          new Radio<int>(
                              activeColor: Colors.lightGreenAccent,
                              value: 5,
                              groupValue: radioValue,
                              onChanged: handleRadioValueChanged),
                          new Text(
                            "Saturn",
                            style: new TextStyle(
                                color: Colors.black, fontSize: 27),
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio<int>(
                              activeColor: Colors.lightGreenAccent,
                              value: 6,
                              groupValue: radioValue,
                              onChanged: handleRadioValueChanged),
                          new Text(
                            "Uranus",
                            style: new TextStyle(
                                color: Colors.black, fontSize: 27),
                          ),
                          new Radio<int>(
                              activeColor: Colors.lightGreenAccent,
                              value: 7,
                              groupValue: radioValue,
                              onChanged: handleRadioValueChanged),
                          new Text(
                            "Neptune",
                            style: new TextStyle(
                                color: Colors.black, fontSize: 27),
                          ),
                          new Radio<int>(
                              activeColor: Colors.lightGreenAccent,
                              value: 8,
                              groupValue: radioValue,
                              onChanged: handleRadioValueChanged),
                          new Text(
                            "Pluto",
                            style: new TextStyle(
                                color: Colors.black, fontSize: 27),
                          ),
                        ],
                      ),
                    ],
                  ),

                  //Result text
                  new Padding(padding: new EdgeInsets.all(15.0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double calculateWeight(String weight, double multiplier) {
    if (int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * multiplier;
    } else {
      print("Wrong!");
      return int.parse("180") * 0.38; // give a default weight! Be creative!
    }
  }
}

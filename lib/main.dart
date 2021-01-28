import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "People counter: 0!",
      home: Home()));
}

/* We need create a class to return an widget, this will help us to make an
interaction with the interface. When someone click in some button (+1 or -1),
the app will count +1 people.*/

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;

  /*Using the function _changePeople with setState, we can rebuild the
  * interface, and show us the number of people who touched the button.
  * The setState will refresh the screen app. It's kinda a F5 on web page*/
  void _changePeople(int delta){
  setState(() {
    _people += delta;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/buzz.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Counted: $_people !",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "+1",
                      style:
                      TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                     _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.green),
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              "Thanks !",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 25.0),
            ),
          ],
        )
      ],
    );
  }
}






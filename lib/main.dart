import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "People counter: 0!",
      home: Stack(
        children: <Widget>[
          Image.asset(
            "images/buzz.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Counted: 0 !",
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
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.green),
                      ),
                      onPressed: () {},
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
      )));
}

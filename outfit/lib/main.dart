import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: new Padding( // Adds margin from the top to seperate the Action Bar from our banner
          padding: const EdgeInsets.only(top: 35.0),
          child: new Column( // Master column
            children: <Widget>[
              new Row( // Row for banner
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: new Icon( // The sandwich/dehaze icon
                      Icons.dehaze,
                      size: 40.0,
                      color: Colors.black,
                    ),
                  ),
                  new Text( // Our app's name
                    "Outfit",
                    style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'Arial',
                      decoration: TextDecoration.none,
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: new Icon( // Make this a Stack because we want to add a red circle with a number in it
                      Icons.shopping_cart,
                      size: 35.0,
                    ),
                  ),
                ],
              ),
              new Divider(
                thickness: 1.5,
              ),
              new Expanded(
                child: new ListView(
                  children: <Widget>[
                    new Text("test"),
                    new Text("test2"),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
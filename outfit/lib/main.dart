import 'package:flutter/material.dart';
import 'dart:ui';

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
                  new Container(
                    child: new Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: new Icon( // The sandwich/dehaze icon
                        Icons.dehaze,
                        size: 40.0,
                        color: Colors.black,
                      ),
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
                  new Container(
                    child: new Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: new Icon( // Make this a Stack because we want to add a red circle with a number in it
                        Icons.shopping_cart,
                        size: 35.0,
                      ),
                    ),
                  ),
                ],
              ),
              new Divider(
                thickness: 1.5,
              ),
              new Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new ClipOval(
                        child: new Container(
                          color: Colors.red,
                          height: 65,
                          width: 65,
                          child: new Center(
                            child: Image.asset("assets/images/jcpenny.png"),
                          ),
                        ),
                      ),
                    new ClipOval(
                        child: new Container(
                          color: Colors.blue,
                          height: 65,
                          width: 65,
                          child: new Center(
                            child: Image.asset("assets/images/oldnavy.png")
                          ),
                        ),
                      ),
                    new ClipOval(
                        child: new Container(
                          color: Colors.yellow,
                          height: 65,
                          width: 65,
                          child: new Center(
                            child: Image.asset("assets/images/gucci.png", height: window.physicalSize.height / 50)
                          ),
                        ),
                      ),
                    new ClipOval(
                        child: new Container(
                          color: Colors.black,
                          height: 65,
                          width: 65,
                          child: new Center(
                            child: Image.asset("assets/images/uo.png", height: window.physicalSize.height / 50)
                          ),
                        ),
                      ),
                    new ClipOval(
                        child: new Container(
                          color: Colors.grey,
                          height: 65,
                          width: 65,
                          child: new Center(
                            child: Image.asset("assets/images/lv.png", height: window.physicalSize.height / 50)
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              new Expanded(
                child: new ListView(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: new Container(
                              color: Colors.grey,
                              height: window.physicalSize.height / 12,
                              width: window.physicalSize.width / 6.5,
                            ),
                          ),

                          new ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: new Container(
                              color: Colors.grey,
                              height: window.physicalSize.height / 12,
                              width: window.physicalSize.width / 6.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    new Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: new Container(
                              color: Colors.grey,
                              height: window.physicalSize.height / 12,
                              width: window.physicalSize.width / 6.5,
                            ),
                          ),

                          new ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: new Container(
                              color: Colors.grey,
                              height: window.physicalSize.height / 12,
                              width: window.physicalSize.width / 6.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    new Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: new Container(
                              color: Colors.grey,
                              height: window.physicalSize.height / 12,
                              width: window.physicalSize.width / 6.5,
                            ),
                          ),

                          new ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: new Container(
                              color: Colors.grey,
                              height: window.physicalSize.height / 12,
                              width: window.physicalSize.width / 6.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    new Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: new Container(
                              color: Colors.grey,
                              height: window.physicalSize.height / 12,
                              width: window.physicalSize.width / 6.5,
                            ),
                          ),

                          new ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: new Container(
                              color: Colors.grey,
                              height: window.physicalSize.height / 12,
                              width: window.physicalSize.width / 6.5,
                            ),
                          ),
                        ],
                      ),
                    ),
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
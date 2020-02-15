import 'package:flutter/material.dart';
import 'dart:ui';

// This adds the reusable class, block, for clothing items to be presented to the user
import 'blockRow.dart';

// This calls the build method for the class OutfitApp and displays it on the screen
void main() => runApp(OutfitApp());

class OutfitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Here I'm specifing a list to hold each BlockRow object
    final blockRowList = <Widget>[];

    // Loop to add multiple rows of blocks to the user's screen
    for(int i = 0; i < 4; i++) {
      blockRowList.add(new BlockRow());
    }

    return MaterialApp(
      title: 'Outfit',
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
                          color: const Color(0xFFE3E3E3),
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
                  children: blockRowList, // This is the variable I created above
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Add a row here for all of the icons. i.e. home button, search button, favorites item, etc.
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
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Write code here for each block to have its own custom clothing item. Probably connect to the server for this.
    var newClothingItem = ClothingItem();

    return Stack(
      children: <Widget>[
        new ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: new Container(
            color: const Color(0xFFF0F0F0),
            height: window.physicalSize.height / 12,
            width: window.physicalSize.width / 6.5,
          ),
        ),
        new Positioned(
          top: 12.0,
          right: 15.0,
          child: new Text(
            newClothingItem.name,
            style: new TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
              fontSize: 12.0,
              fontFamily: 'Arial',
              decoration: TextDecoration.none,
            ),
          ),
        ),
        new Positioned(
          bottom: 7.5,
          right: 12.0,
          child: new Icon(
            newClothingItem.liked ? Icons.favorite : Icons.favorite_border,
            size: 25.0,
            color: newClothingItem.liked ? const Color(0xFFFF0000) : const Color(0xFFFFFFFF),
          ),
        ),
        new Positioned(
          bottom: 5.0,
          left: 10.0,
          child: new Container(
            height: 25.0,
            width: 50.0,
            child: new Image.asset("assets/images/nike.png"),
          ),
        ),
      ],
    );
  }
}

// Create a method to generate a lot of these clothing items. Information recieved from the server.
class ClothingItem {
  String name = "Air Force 1";
  String brand = "Nike";
  bool liked = false;
  bool onSale = false;
}
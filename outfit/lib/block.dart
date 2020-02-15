import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: new Container(
            color: const Color(0xFFE3E3E3),
            height: window.physicalSize.height / 12,
            width: window.physicalSize.width / 6.5,
          ),
        ),
        new Positioned(
          bottom: 10.0,
          left: 10.0,
          // At this point, the child should connect to our servers and randomly present a random clothing item
          child: new Image.network(
            "https://i.pinimg.com/originals/20/60/2d/20602d43cc993811e5a6bd1886af4f33.png",
            height: 20.0,
          ),
        ),
        new Positioned(
          left: window.physicalSize.width / 52,
          top: window.physicalSize.height / 96,
          child: new Image.network(
            "https://lh3.googleusercontent.com/proxy/Ezp21kDssvbZGtpRsre08a2igaHMBIPcHgmOPAnZwCh21kTGkeGu1nc0wUe1JzYX3WAoyTl2rB36Jj7NX6-XGxn7wMAHJ91f-nJUVp2O2m10TJVuFFmoTO9EDtX-S67y0tQcdEiX5T2I9MNyw16zkaTXfL4j0ucC3BDSBgLdizNfesNAUDE-kJg",
            height: 100.0,
          ),
        ),
        new Positioned(
          bottom: 12.0,
          right: 15.0,
          child: new Text(
            "Nike Air Force 1",
            style: new TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 10.0,
              fontFamily: 'Arial',
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'dart:ui';

class Block extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: new Container(
        color: const Color(0xFFE3E3E3),
        height: window.physicalSize.height / 12,
        width: window.physicalSize.width / 6.5,
      ),
    );
  }
}
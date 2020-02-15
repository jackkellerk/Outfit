import 'package:flutter/cupertino.dart';

// Import the block class
import 'block.dart';

class BlockRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Block(),
          new Block(),
        ],
      ),
    );
  }
}
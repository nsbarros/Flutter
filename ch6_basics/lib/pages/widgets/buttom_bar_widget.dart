import 'package:flutter/material.dart';

class ButtonBarWidget extends StatelessWidget {

  const ButtonBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.gamepad),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.videogame_asset),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.star),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class FlatButtonExample extends StatelessWidget {

  const FlatButtonExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: ListTile(
        title: Text("Capturar"), leading: Icon(Icons.photo_camera),),
      //Icon(Icons.picture_in_picture_alt),
      color: Colors.lightGreen,
    );
  }
}
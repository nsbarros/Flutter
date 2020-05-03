import 'package:flutter/material.dart';

class ButtomNavigatorHome extends StatelessWidget {

  const ButtomNavigatorHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade50,
      child: BottomAppBar(
        notchMargin: 16.0,
        color: Colors.lightGreen.shade100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              child: Icon(Icons.play_arrow, color: Colors.lightGreen,),
              onPressed: (){},
            ),
            FlatButton(
              child: Icon(Icons.pause, color: Colors.lightGreen,),
              onPressed: (){},
            ),
            FlatButton(
              child: Icon(Icons.stop, color: Colors.lightGreen,),
              onPressed: (){},
            ),
            Padding(padding: EdgeInsets.all(16.0),)
          ],
        ),
      ),
    );
  }
}

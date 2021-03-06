import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {

  double _height = 100.0;
  double _width = 100.0;

  void _increaseWidth(){
    setState(() {
      _width = _width > 320 ? 100.0 : _width += 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          color: Colors.deepPurple,
          width: _width,
          height: _height,
          duration: Duration(seconds: 3),
          curve: Curves.ease,
          child: FlatButton(
            onPressed: (){
              _increaseWidth();
            },
            child: Text("Increase"),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  @override
  _AnimatedCrossFadeWidgetState createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _showCrossFade = false;

  void _crossFade() {
    setState(() {
      _showCrossFade = _showCrossFade ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedCrossFade(
          duration: Duration(milliseconds: 7),
          sizeCurve: Curves.easeInCirc,
          //firstCurve: Curves.bounceIn,
          //secondCurve: Curves.bounceOut,
          crossFadeState: _showCrossFade ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: Container(
            color: Colors.green,
            height: 100.0,
            width: 100.0,
          ),
          secondChild: Container(
            color: Colors.blueAccent,
            height: 200.0,
            width: 200.0,
          ),
        ),
        Positioned.fill(
          child: FlatButton(
            child: Text("Start Cross Fade"),
            onPressed: (){
              _crossFade();
            },
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class AnimationBallomStaggered extends StatefulWidget {
  @override
  _AnimationBallomStaggeredState createState() => _AnimationBallomStaggeredState();
}

class _AnimationBallomStaggeredState extends State<AnimationBallomStaggered>
with SingleTickerProviderStateMixin
{


  AnimationController _controller;
  Animation<double> _ballonFloatUp;
  Animation<double> _ballonGlowSize;

  @override
  void initState() {
    _controller = AnimationController(duration: Duration(seconds: 4), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var _widthBallon = MediaQuery.of(context).size.height / 3;
    var _heightBallon = MediaQuery.of(context).size.height / 2;
    var _positionBottomBallon = MediaQuery.of(context).size.height - _heightBallon;

    _ballonFloatUp = Tween(begin: _positionBottomBallon, end: 0.0)
    .animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
    ));

    _ballonGlowSize = Tween(begin: 50.0, end: _widthBallon)
    .animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.0, 0.5, curve: Curves.elasticOut)
    ));

    return AnimatedBuilder(
      animation: _ballonFloatUp,
      builder: (context, child){
        return Container(
          child: child,
          margin: EdgeInsets.only(top: _ballonFloatUp.value > 0 ? _ballonFloatUp.value : 0,),
          width: _ballonGlowSize.value,
        );
      },
      child: GestureDetector(
        child: Image.network(
            "https://pngimage.net/wp-content/uploads/2018/06/vila-nova-png-3.png",
            height: _heightBallon,
            width: _widthBallon),
        onTap: () {
          if (_controller.isCompleted) {
            _controller.reverse();
            _controller.reverse();
          } else {
            _controller.forward();
            _controller.forward();
          }
        },
      ),
    );
  }
}

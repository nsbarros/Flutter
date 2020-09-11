import 'package:flutter/material.dart';

class AnimatedControllerBallom extends StatefulWidget {
  @override
  _AnimatedControllerBallomState createState() =>
      _AnimatedControllerBallomState();
}

class _AnimatedControllerBallomState extends State<AnimatedControllerBallom>
    with TickerProviderStateMixin {
  AnimationController _controllerFloatUp;
  AnimationController _controllerGrowSize;

  Animation<double> _animationFloatUp;
  Animation<double> _animationGrowSize;

  @override
  void initState() {
    _controllerFloatUp =
        AnimationController(duration: Duration(seconds: 4), vsync: this);
    _controllerGrowSize =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controllerFloatUp.dispose();
    _controllerGrowSize.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _widthBallom = MediaQuery.of(context).size.height / 3;
    var _heightBallom = MediaQuery.of(context).size.height / 2;
    var _positionBottomBallom =
        MediaQuery.of(context).size.height - _heightBallom;

    _animationFloatUp = Tween(begin: _positionBottomBallom, end: 0.0).animate(
        CurvedAnimation(
            parent: _controllerFloatUp, curve: Curves.fastOutSlowIn));

    _animationGrowSize = Tween(begin: 50.0, end: _widthBallom).animate(
        CurvedAnimation(parent: _controllerGrowSize, curve: Curves.elasticOut));

    return AnimatedBuilder(
      animation: _animationFloatUp,
      builder: (context, child) {
        return Container(
          child: child,
          margin: EdgeInsets.only(
              top: _animationFloatUp.value > 0 ? _animationFloatUp.value : 0,
          ),
          width: _animationGrowSize.value,
        );
      },
      child: GestureDetector(
        child: Image.network(
            "https://pngimage.net/wp-content/uploads/2018/06/vila-nova-png-3.png",
            height: _heightBallom,
            width: _widthBallom),
        onTap: () {
          if (_controllerFloatUp.isCompleted) {
            _controllerFloatUp.reverse();
            _controllerGrowSize.reverse();
          } else {
            _controllerFloatUp.forward();
            _controllerGrowSize.forward();
          }
        },
      ),
    );
  }
}

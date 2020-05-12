import 'package:ch7_animations/animated_cross_fade.dart';
import 'package:flutter/material.dart';

import 'animated_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AnimatedContainerWidget(),
              AnimatedCrossFadeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}


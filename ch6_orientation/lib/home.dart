import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: _orientation == Orientation.portrait
              ? Center(
                  child: Text("Orientation Portrait"),
                )
              : Center(
                  child: Text("Other Orientation"),
                ),
        ),
      ),
    );
  }
}

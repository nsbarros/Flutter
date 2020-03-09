import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                _buildHorizontalRow(),
                Padding(padding: EdgeInsets.all(16.0),),
                _buildRowAndColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildRowAndColumn() {
    return Row(
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: 60.0,
                        color: Colors.yellow,
                      ),
                      Padding(padding: EdgeInsets.all(16.0),),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        color: Colors.amber,
                      ),
                      Padding(padding: EdgeInsets.all(16.0),),
                      Container(
                          height: 20.0,
                          width: 20.0,
                          color: Colors.brown
                      ),
                      Divider(),
                      _buildRowAndStack(),
                      Divider(),
                      Text("End of the line"),
                    ],
                  )
                ],
              );
  }

  Row _buildRowAndStack() {
    return Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.lightGreen,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 100.0,
                                width: 100.0,
                                color: Colors.yellow,
                              ),
                              Container(
                                height: 60.0,
                                width: 60.0,
                                color: Colors.amber,
                              ),
                              Container(
                                height: 40.0,
                                width: 40.0,
                                color: Colors.brown,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
  }

  Row _buildHorizontalRow() {
    return Row(children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  color: Colors.yellow,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                Expanded(
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.amber,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  color: Colors.brown,
                ),
              ],);
  }
}

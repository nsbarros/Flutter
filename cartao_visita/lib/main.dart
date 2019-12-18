import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.supervised_user_circle,
                      color: Colors.black,
                      size: 50,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text(
                            'Flutter McFlutter',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text(
                            'Experienced App Developer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '123 Main Street',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                  Text('(415) 555-0198',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          decoration: TextDecoration.none))
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.beenhere,
                    color: Colors.black,
                    size: 25,
                  ),
                  Icon(
                    Icons.assessment,
                    color: Colors.black,
                    size: 25,
                  ),
                  Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 25,
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: 25,
                  ),
                  Icon(
                    Icons.art_track,
                    color: Colors.black,
                    size: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));

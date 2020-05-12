import 'package:flutter/material.dart';

class BoxDecoratorWidget extends StatelessWidget {

  const BoxDecoratorWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(10.0, 0.0),
                blurRadius: 10.0,

              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ImagesAndIconsWidget extends StatelessWidget {

  const ImagesAndIconsWidget({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image(
          image: AssetImage("assets/images/vila.png"),
          fit: BoxFit.contain,
          width: MediaQuery.of(context).size.width / 3,
        ),
        Image.network("https://pbs.twimg.com/profile_images/1245096532589895680/CEJATXjB_400x400.jpg", fit: BoxFit.contain, width: MediaQuery.of(context).size.width / 3,),
        Icon(Icons.public,
        size: 80.0,
        color: Colors.pink,)
      ],
    );
  }
}

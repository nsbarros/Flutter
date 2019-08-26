import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loguin Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Loguin(),
    );
  }
}

class Loguin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoguinState();
  }
}

class _LoguinState extends State<Loguin> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Telefone do usuário",
                    labelStyle: TextStyle(color: Colors.black),
                  )),
              TextField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Senha do usuário",
                    labelStyle: TextStyle(color: Colors.black),
                  )),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () => {
                    print("pressionei o botão"),
                  },
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  child: Text(
                    "Enviar",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ), //Text
                  color: Colors.blueAccent,
                ), //RaisedButton
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.lightBlue,
    ),
    home: Perguntas(),
  ));
}


class Perguntas extends StatefulWidget {
  @override
  _PerguntasState createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {

  var perguntas = {"'Pois, que aproveitaria ao homem ganhar todo o mundo e perder a sua alma?' \n(Marcos 8:36)",
    "'Escondi a tua palavra no meu coração, para eu não pecar contra ti'. \n(Salmos 119:11)",
    "'Bem-aventurados os que choram, porque eles serão consolados'. \n (Mateus 5:4)"};

  int _position = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Versículo App', style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: Text(perguntas.elementAt(_position))),
                Center(
                  child: RaisedButton(
                    child: Text('Próximo'),
                    onPressed: () => nextPergunta(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void nextPergunta() {
    setState(() {
      if(_position < 2){
        _position++;
      }else{
        _position = 0;
      }

    });
  }
}
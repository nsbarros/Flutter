import 'package:flutter/material.dart';

class InputDecoratorWidget extends StatelessWidget {


  //const InputDecoratorWidget({Key key}) : super(key: key);

  GlobalKey<FormState> _keyControle = GlobalKey<FormState>();

  String name;

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _keyControle,
      child: Column(
        children: <Widget>[
            TextFormField(
              validator: (value) => _validader(value),
              onSaved: (value) => name = value,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink),
                ),
                hintText: "Digite o se nome",
              ),
            ),
            FlatButton(
              child: Text("Teste Formulário"),
              onPressed: (){
                _saver();
              },
            ),
        ],
      ),
    );
  }

  String _validader(String value) {
    if(value.isEmpty){
      return "Por favor preencha este campo";
    }
  }

 void _saver() {
    if(_keyControle.currentState.validate()){
      _keyControle.currentState.save(); // para eu pegar o valor do save e atribuir na variavel name
      print(name);
    }

 }
}

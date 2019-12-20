import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Friendlychat',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FriendlyChatApp());
  }
}

class FriendlyChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatScreen();
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _textController = new TextEditingController();

  final List<ChatMessagem> _messages = <ChatMessagem>[]; //lista de widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friendlychat"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
              reverse: true, //reverte a ordem da lista
            ),
          ),
          Divider(
            height: 1.0,
          ),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: TextField(
                controller: _textController,
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message"),
                onSubmitted: __handleSubmitted,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                alignment: Alignment.centerLeft,
                onPressed: () {
                  __handleSubmitted(_textController.text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void __handleSubmitted(String value) {
    ChatMessagem mensagem = new ChatMessagem(textValue: value,);
    setState(() {
      _messages.insert(0, mensagem);
    });

    _textController.clear();
  }
}

class ChatMessagem extends StatelessWidget {
  final String _name = "Nathan";
  final String textValue;

  ChatMessagem({this.textValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(child: new Text(_name[0])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _name,
                style: Theme.of(context).textTheme.headline,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Text(textValue)),
            ],
          ),
        ],
      ),
    );
  }
}

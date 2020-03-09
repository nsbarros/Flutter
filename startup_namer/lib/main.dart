import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        /*appBar: AppBar(
          title: const Text('Startup Name Generator'),
        ),*/
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();
  final TextStyle _biggerFont = TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: _pushSaved,
        ),
      ],
      ),
      body: _builderSuggestion(),
    );
  }

  Widget _builderSuggestion() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) {
          return Divider();
        }

        // The syntax "i ~/ 2" divides i by 2 and returns an
        // integer result.
        // For example: 1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2.
        // This calculates the actual number of word pairings
        // in the ListView,minus the divider widgets.
        final int index = i;
        // If you've reached the end of the available word
        // pairings...
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair suggestion) {
    final bool _alreadySaved = _saved.contains(suggestion);
    return ListTile(
      trailing: Icon(
        _alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: _alreadySaved ? Colors.red : null,
      ),
      title: Text(
        suggestion.asPascalCase,
        style: _biggerFont,
      ),
      onTap: () {
        setState(() {
          if (_alreadySaved) {
            print("Removendo item da lista...");
            _saved.remove(suggestion);
          } else {
            print("Adicionando item da lista...");
            _saved.add(suggestion);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(

      MaterialPageRoute<void>(   // Add 20 lines from here...
        builder: (BuildContext context) {

          final Iterable<ListTile> tiles = _saved.map(
                (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );

          final List<Widget> divided = ListTile
              .divideTiles(
            context: context,
            tiles: tiles,
          )
              .toList();

          return Scaffold(
            appBar: AppBar(title: Text('Saved Suggestions'),),
            body: ListView(children: divided,),
          );
        },

      ),                       // ... to here.
    );
  }
}

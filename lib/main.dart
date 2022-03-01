import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Startup Name Generator",
      home: RandomWords()
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {

  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};
  final _bigFont = const TextStyle(fontSize: 18.0);


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Startup Name Generator"),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (context, i){
              if (i.isOdd) return const Divider();

              final index = i ~/ 2;

              if (index >= _suggestions.length){
                _suggestions.addAll(generateWordPairs().take(10));
              }

              return _buildrow(_suggestions[index]);
            }
          )
      );
  }

  Widget _buildrow(WordPair pair)
  {
    final alreadySaved = _saved.contains(pair);
    
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _bigFont,
        ),
        trailing: Icon(
          alreadySaved ? Icons.favorite: Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
          semanticLabel: alreadySaved ? "Remove from saved" : "Save"
        ),
      );
  }
  /*Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }*/

  
}
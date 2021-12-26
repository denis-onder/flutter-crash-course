import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  Widget _buildList() {
    final list = <Widget>[];

    for (var i = 0; i < 50; i++) {
      list.add(Container(
        height: 50,
        color: Colors.white,
        child: Center(
          child: Text(WordPair.random().asPascalCase),
        ),
      ));
    }

    return ListView(padding: const EdgeInsets.all(8), children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WordPair Generator"),
      ),
      body: _buildList(),
    );
  }
}

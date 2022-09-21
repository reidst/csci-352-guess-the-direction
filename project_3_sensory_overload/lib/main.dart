import 'package:flutter/material.dart';
import 'package:project_3_sensory_overload/scoreboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Score Page',
      theme: ThemeData(
        // This is the theme of your application.
        //
        primarySwatch: Colors.deepPurple,
      ),
      home: const ScorePage(title: 'Scores'),
    );
  }
}

class ScorePage extends StatefulWidget {
  const ScorePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  final List<Score> scores = [
    const Score(degree: 12),
    const Score(degree: 20),
    const Score(degree: 8)
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: scores.map((score) {
          return ScoreItem(
            score: score,
          );
        }).toList(),
      ),
    );
  }
}

void _handleScoreAdded(Score score) {
  //bubble sort and add from beginning
}

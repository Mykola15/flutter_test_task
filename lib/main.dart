import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test task',
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  List<Color> _colors = <Color>[
    Colors.blue,
    Colors.red,
    Colors.black,
    Colors.green
  ];
  Random random = new Random();
  int begin_index = 0;
  int end_index = 1;

  void changeIndex() {
    setState(() => begin_index = random.nextInt(4));
    setState(() => end_index = random.nextInt(4));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {changeIndex()},
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [_colors[begin_index], _colors[end_index]]),
          ),
          child: Center(
            child: Text("Change background color",
                style: TextStyle(color: Colors.white,fontSize: 16.0)),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_demo1/ListView3.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello world",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('hello world'),
        ),
        body:  MyStackView()
      ),
    );
  }
}



class MyStackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      // alignment: AlignmentDirectional.bottomEnd,
      alignment: new FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: const EdgeInsets.all(5.0),
          child: new Text('hello world'),
        )
      ],
    );
  }
}
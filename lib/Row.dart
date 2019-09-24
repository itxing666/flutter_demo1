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
        body:  MyRowView()
      ),
    );
  }
}



class MyRowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        Expanded(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.deepOrange,
            child: new Text("deepOrange"),
          ),
        ),
        Expanded(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.lightBlue,
            child: new Text("lightBlue"),
          ),
        ),
        Expanded(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.pink,
            child: new Text("pink"),
          ),
        ),
      ],
    );
  }
}
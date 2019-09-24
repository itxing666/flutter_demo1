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
        body:  MyColumnView()
      ),
    );
  }
}



class MyColumnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text("hello world"),
          Expanded(
            child: new Text("my website is Jspang"),
          ),
          new Text("I love coding")
        ],
      ),
    );
  }
}
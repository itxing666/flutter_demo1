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
        body:  MyGridView()
      ),
    );
  }
}



class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0
      ),
      children: <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.airline_seat_flat),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.block)
      ],
    );
  }
}
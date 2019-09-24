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
        body:  MyCardView()
      ),
    );
  }
}



class MyCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            title: new Text('hello world'),
            subtitle: new Text('你好'),
            leading: new Icon(Icons.account_balance),
          ),
          new Divider(),
              ListTile(
               title:new Text('北京市海淀区中国科技大学',style: TextStyle(fontWeight: FontWeight.w500),),
               subtitle: new Text('胜宏宇:1513938888'),
               leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
             ),
             new Divider(),
              ListTile(
               title:new Text('河南省濮阳市百姓办公楼',style: TextStyle(fontWeight: FontWeight.w500),),
               subtitle: new Text('JSPang:1513938888'),
               leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
             ),
             new Divider(),
        ],
      ),
    );
  }
}
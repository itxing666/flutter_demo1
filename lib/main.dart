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
      home: FirstPage()
    );
  }
}


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('找小姐姐要电话'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}


// 跳转Button
class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        _navigateToXiaoJieJie(context);
      },
      child: Text('去找小姐姐'),
    );
  }
}

_navigateToXiaoJieJie(BuildContext context) async {
  final result = await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context)=>XiaoJieJie()
    )
  );
  Scaffold.of(context).showSnackBar(SnackBar(content:Text('$result')));
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('我是小姐姐')
      ),
      body:Center(
        child:Column(
          children: <Widget>[
            RaisedButton(
              child: Text('大长腿小姐姐'),
              onPressed: (){
                Navigator.pop(context,'大长腿:1511008888');
              },
            ) ,
            RaisedButton(
              child: Text('小蛮腰小姐姐'),
              onPressed: (){
                Navigator.pop(context,'大长腿:1511009999');
              },
            ) ,
          ],
        )
      ) ,
    );
  }
}

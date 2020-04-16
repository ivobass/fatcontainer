import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _fat = 80.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: _fat,
        height: _fat,
        color: Colors.blue,
        child: FlatButton(
          onPressed: () {
            setState(() {
              _fat = _fat + 20.0;
              print('$_fat');
              if (_fat > 800.0) {
                _fat= 100.0;
              }
            });
          },
          child: Text('FatButton'),
        ),
      ),
    );
  }
}

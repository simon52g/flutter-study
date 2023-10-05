import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('C1'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('C2'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('C3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

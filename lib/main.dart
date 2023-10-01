import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
      primarySwatch: Colors.blue
      ),
    home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('BBANTO'),
      centerTitle: true,
      backgroundColor: Colors.redAccent,
      elevation: 0.0,
   
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
            ]
            
          ),
      ),

    );
  }
}
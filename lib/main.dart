import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // Background color
          ),
          child: Text(
            'Show me',
            style: TextStyle(color: Colors.white),
          ),
          // color: Colors.red,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Hellow'),
            ));
          },
        ),
      ),
    );
  }
}

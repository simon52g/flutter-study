import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home : Mypage(),
    );
  }
}


class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu), 
          onPressed: () {
            print('mene button is cliked');
          },
      ),
      actions:<Widget> [
        IconButton(
          icon: Icon(Icons.shopping_cart), 
          onPressed: () {
            print('shopping cart button is cliked');
          },
         ),
         IconButton(
          icon: Icon(Icons.search), 
          onPressed: () {
            print('Serch button is cliked');
          },
      ),
       ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ScreenB.dart';
import 'package:flutter_application_1/ScreenC.dart';
import 'ScreenA.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' :(context) => ScreenA(),
        '/b' :(context) => ScreenB(),
        '/c' :(context) => ScreenC()
      },
    );
  }
}

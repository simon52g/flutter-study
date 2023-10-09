import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                // onPressed: (){
                //   print('text button');
                // },
                onPressed: () {
                  print('Text button');
                },
                child: Text(
                  'Text button',
                  style: TextStyle(fontSize: 20.0),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  // backgroundColor: Colors.blue
                )),
            ElevatedButton(
              onPressed: () {
                print('Elevated button');
              },
              child: Text('Elevated button'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outline button');
              },
              child: Text('Outline button'),
              style: OutlinedButton.styleFrom(primary: Colors.green
                  // side: BorderSide(

                  // )
                  ),
            ),
            TextButton.icon(
              onPressed: () {
                print('icon button');
              },
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: Colors.black87,
              ),
              label: Text('Go to home'),
              style: TextButton.styleFrom(primary: Colors.purple),
            )
          ],
        ),
      ),
    );
  }
}

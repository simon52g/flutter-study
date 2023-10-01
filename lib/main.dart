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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/3.gif'),
                backgroundColor: Colors.white,
            ),
            otherAccountsPictures: <Widget> [
              CircleAvatar(
                backgroundImage: AssetImage('assets/1.png'),
                backgroundColor: Colors.white,
              ),
              // CircleAvatar(
              //   backgroundImage: AssetImage('assets/2.png'),
              //   backgroundColor: Colors.white,
              // ),
            ],
            accountName: Text('BBANTO'),
            accountEmail: Text('bbanto@bbanto.com'),
            onDetailsPressed: () {
              print('arrow is clicked');
            },
            decoration: BoxDecoration(
              color: Colors.red[200],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0)
              )
            ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
                        ListTile(
              leading: Icon(Icons.settings,
              color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: (){
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
                        ListTile(
              leading: Icon(Icons.question_answer,
              color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

//순한맛 강자 16까지 함.
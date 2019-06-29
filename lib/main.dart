import 'package:flutter/material.dart';

import 'home/HomePage.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}




/****

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.deepOrangeAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.orange,
                  Colors.orangeAccent,
                  Colors.amber
                ],
              ),
            ),
          ),
          leading: new IconButton(
              icon: new Icon(Icons.person),
              color: Colors.grey,
              onPressed: (){
              }
          ),
          title: Center(
            child: new Text('Blogy'),
          ),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.chat_bubble),
                color: Colors.grey,
                onPressed: (){
                }
            ),
          ],
    ),
        body: HomePage()
      ),
    );
  }
}

*****/








/***

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.deepOrangeAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Shapes'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.red,
                  Colors.blue
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(),
        ),
      ),
    );
  }
}
    **/
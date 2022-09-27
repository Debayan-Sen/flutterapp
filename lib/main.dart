import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My Flutter App")),
        body:  Container(
          height: 200,
          width: 200,
          color: Colors.black26,
          margin: EdgeInsets.all(20),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          print("Henlo!!");
        },
        child: Icon(Icons.add),),
      ),
    );
  }
}
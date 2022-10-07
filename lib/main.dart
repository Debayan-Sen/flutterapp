import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State <MyApp> createState() =>  MyAppState();
}

class  MyAppState extends State <MyApp> {

  String name = "Debayan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter App"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Text(name, style: TextStyle(fontSize: 50),),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (name == "Dev") {
                name = "Debayan";
              }else{
                name ="Dev";
              }
            });
          },
          child: Icon(Icons.change_circle),
        ),
      ),
    );
  }
}
// import 'dart:html';
import 'dart:ui';

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

  List data = [
    {
      "image" : "https://images.pexels.com/photos/38136/pexels-photo-38136.jpeg?auto=compress&cs=tinysrgb&w=1260&h=300&dpr=1",
      "name" : "Forest",
      "likes" : 152
    },
    {
      "image" : "https://images.pexels.com/photos/1033729/pexels-photo-1033729.jpeg?auto=compress&cs=tinysrgb&w=1260&h=300&dpr=1",
      "name" : "Road",
      "likes" : 254
    },
    {
      "image" : "https://images.pexels.com/photos/414144/pexels-photo-414144.jpeg?auto=compress&cs=tinysrgb&w=1260&h=300&dpr=1",
      "name" : "NightSky",
      "likes" : 420
    },
    {
      "image" : "https://images.pexels.com/photos/247431/pexels-photo-247431.jpeg?auto=compress&cs=tinysrgb&w=1260&h=300&dpr=1",
      "name" : "Elephant",
      "likes" : 211
    },
    {
      "image" : "https://images.pexels.com/photos/237272/pexels-photo-237272.jpeg?auto=compress&cs=tinysrgb&w=1260&h=300&dpr=1",
      "name" : "Beach",
      "likes" : 655
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter App"),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index){
            return Container(
          padding: EdgeInsets.all(20),
          height: 400,
          color: Colors.black12,
          child: Column(children: [
            Image.network(data[index]["image"]),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data[index]["name"], style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                 Row(
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(width: 5,),
                    Text(data[index]["likes"].toString(),style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                    SizedBox(width: 10,),
                    Icon(Icons.comment),

                  ],
                 )
              ],
            )
          ]),
        );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            
          },
          child: Icon(Icons.change_circle),
        ),
      ),  
    );
  }
}
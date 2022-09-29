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
        drawer: Drawer(child: Column(
          children: [
            Text("link1"),
            Text("link2")
          ]),
        ),
        body:  Container(
          height: 500,
          width: 400,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.redAccent
                    )
                  )
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.redAccent
                    )
                  )
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Pin",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.redAccent
                    )
                  )
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          print("Henlo!!");
        },
        child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  print("home");
                },
                child: Container(
                  child: Icon(Icons.camera_alt),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Icon(Icons.save),
              ),
            ),
            Expanded(
              child: Container(
                child: Icon(Icons.delete_forever_outlined),
              ),
            ),
            Expanded(
              child: Container(
                child: Icon(Icons.person),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
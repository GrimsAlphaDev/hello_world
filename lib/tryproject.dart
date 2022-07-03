import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Root of App
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Panggil FirstScreen
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {},
        ),
        title: Text('First Screen'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
          child: Container(
        child: Text('Hi', style: TextStyle(fontSize: 40)),
        // color: Colors.blue,
        // margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.purple,
          // shape: BoxShape.circle,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black,
          //     offset: Offset(3, 6),
          //     blurRadius: 10,
          //   ),
          // ],
          border: Border.all(color: Colors.green, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

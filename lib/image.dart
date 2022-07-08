import 'dart:html';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),
        body: Center(
          child:
              // Using Online Source
              // Image.network(
              //   'https://picsum.photos/200/300',

              // Using Local Source
              Image.asset(
            'images/patoriku.jpg',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Font",
      theme: ThemeData(primarySwatch: Colors.amber, fontFamily: 'Oswald'),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Fonts"),
        ),
        body: Center(
          child: Text(
            'Custom Font',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

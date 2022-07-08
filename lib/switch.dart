import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hello_world/button.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: FirstScreenState(),
      ),
    );
  }
}

class FirstScreenState extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreenState> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Switch(
        value: lightOn,
        onChanged: (bool value) {
          setState(() {
            lightOn = value;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(lightOn ? 'Light On' : 'Light Off'),
              duration: Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  }
}

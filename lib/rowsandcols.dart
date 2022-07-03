import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Root of App
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rows And Column",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Panggil FirstScreen
      home: FirstScreen(),
    );
  }
}

// first screen
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
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "Sebuah Judul",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text("Lorem Ipsum Dolor sit amet")
          ],
        ),
      ),
    );
  }
}

// Widget Rows
// Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Icon(Icons.share),
//             Icon(Icons.thumb_up),
//             Icon(Icons.thumb_down),
//           ],
//         ),

// Widget Column
// Column(
//           children: [
//             Text(
//               "Sebuah Judul",
//               style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//             ),
//             Text("Lorem Ipsum Dolor sit amet")
//           ],
//         ),
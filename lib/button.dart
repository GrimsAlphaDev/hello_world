// import digunakan untuk memanggil funsgi funsgi dari berkas flutter yang lain. oada kode dibawah kita mengimport library bawaan flutter, library tersebut menyediakan widget yang termasuk dalam amterial design. patikan kode ini ada pada bagian atas sebelum kode lain dijalankan
import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text('Hello, world!'),
        ),
        body: Container(child: FirstScreen()),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  Heading({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton<String>(
        items: const <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
            value: 'Dart',
            child: Text('Dart'),
          ),
          DropdownMenuItem<String>(
            value: 'Kotlin',
            child: Text('Kotlin'),
          ),
          DropdownMenuItem<String>(
            value: 'Swift',
            child: Text('Swift'),
          ),
        ],
        value: language,
        hint: Text('Select Language'),
        onChanged: (String? value) {
          setState(() {
            language = value;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hello_world/rowsandcols.dart';

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
        body: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // Menggunakan OnChange
  // String _name = '';
  // Menggunakan Controller
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello, world!'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                // Menggunakan Controller
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Write your name",
                  labelText: 'Yourname',
                ),

                // Menggunakan On Change
                // onChanged: (String value) {
                //   setState(() {
                //     _name = value;
                //   });
                // },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Hello, ${_controller.text}'),
                        );
                      });
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

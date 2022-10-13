import 'package:flutter/material.dart';

void main(MyApp) => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
TextEditingController controller = TextEditingController(text: 'nilai awal');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Text Field'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextField(
            controller: controller,
          ),
          Text("data")
        ],
      ),
    );
  }
}
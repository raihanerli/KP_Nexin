import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Text Field'),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(118, 3, 168, 244),
                  filled: true,
                  icon: const Icon(Icons.abc),
                  suffix: Container(
                    width: 5, height: 5, color: Colors.red,
                  ),
                  prefixIcon: const Icon(Icons.person),
                  // prefixText: "Name: ",
                  // prefixStyle: TextStyle(color:  Colors.blue, fontWeight: FontWeight.w600),
                  labelText: "Nama Lengkap",
                  hintText: "Nama Lengkapya loh",
                  hintStyle: const TextStyle(fontSize: 12,),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
                ),
                // obscureText: true, // untuk password
                // maxLength: 5, // untuk jumlah karakter maksimal yang akan diinput
                // maxLines: 2, // untuk jumlah baris maksimal yang disediakan ketika box telah sepenuhnya digunakan.
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'apiservice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String valorUsername = "";
  String valorContra = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text("Usuario: "),
            TextField(
              onChanged: (text) {
                valorContra = text;
              },
            ),
            Text("Contra: "),
            TextField(
              onChanged: (text) {
                valorUsername = text;
              },
            ),
            ElevatedButton(
              onPressed: () {
                ServiceApi.postCreateUser(valorUsername, valorContra);
              },
              child: Text("Hacer post"),
            )
          ],
        ),
      ),
    );
  }
}

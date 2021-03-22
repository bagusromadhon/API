import 'package:api/tampil.dart';
import 'package:flutter/material.dart';

void main() => runApp((MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "Ketik Lihat Untuk Melihat List";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Test Api"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(output),
              ],
            ),
            RaisedButton(
              onPressed: () {
                User.getUsers("2").then((users) {
                  output = " ";
                  for (int i = 0; i < users.length; i++)
                    output = output + " " + users[i].name + "  \n";
                  setState(() {});
                });
              },
              child: Text("LIhat"),
            ),
          ],
        ),
      ),
    ));
  }
}

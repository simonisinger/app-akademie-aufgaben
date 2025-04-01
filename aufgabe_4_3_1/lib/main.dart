import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _generateButtonLike(String char) => Container(
    width: 60,
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(vertical: 40),
    padding: EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.purple,
    ),
    child: Text(
        char,
        style: TextStyle(
          color: Colors.white
        ),
    ),
  );

  Widget _generateBox(Color color, String char, double size) => Container(
    alignment: Alignment.center,
    width: size,
    decoration: BoxDecoration(color: color),
    child: _generateButtonLike(char),
  );

  @override
  Widget build(BuildContext context) {
    double boxSize = MediaQuery.of(context).size.width / 3 - 15;
    return MaterialApp(
      title: '4.3.1',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Container(
            child: Text(
                'Aufgabe 1',
                style: TextStyle(color: Colors.white)
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              child: Text(
                'Hello App Akademie',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.blueAccent
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _generateBox(Colors.red, 'A', boxSize),
                  _generateBox(Colors.green, 'B', boxSize),
                  _generateBox(Colors.blue, 'C', boxSize)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.face, size: 40),
                  Icon(Icons.face, size: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

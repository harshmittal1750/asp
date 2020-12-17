import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  color: Colors.red,
                ), 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      color: Colors.yellow,
                      height: 100,
                    ),
                    Container(
                      width: 100,
                      color: Colors.green,
                      height: 100,
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  color: Colors.blue,
                )
              ],
            ),
          )),
    );
  }
}

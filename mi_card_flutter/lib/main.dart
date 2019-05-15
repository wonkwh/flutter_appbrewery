import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: 100,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.yellowAccent,
                      ),
                      Container(
                        height: 100,
                        color: Colors.yellow.withOpacity(0.5),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          )),
    );
  }
}

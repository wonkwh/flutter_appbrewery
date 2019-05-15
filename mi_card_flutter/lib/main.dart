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
            child: Column(
              children: <Widget>[
                CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/wonkwh.jpg")),
                Text(
                  "Kwanghyun Won",
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Developer",
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Text('+011 2333 9830',
                          style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20,
                              color: Colors.teal.shade900))
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.teal,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Text('wonkwh@gmail.com',
                          style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20,
                              color: Colors.teal.shade900))
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

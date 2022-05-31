import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CardApp());
}

class CardApp extends StatelessWidget {
  const CardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: getHome(),
    );
  }

  Widget getHome() {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/profile.jpeg'),
          ),
          Text(
            "Kwanghyun.Won",
            style: GoogleFonts.pacifico(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Text(
            "IOS DEVELOPER",
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                color: Colors.teal.shade100,
                fontSize: 20,
                letterSpacing: 2.5,
              ),
            ),
          ),
        ],
      )),
    );
  }
}

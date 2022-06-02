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
        child: Center(
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
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.teal.shade500,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "+44 323 3929 392",
                      style: GoogleFonts.sourceCodePro(
                          textStyle: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20,
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.teal.shade500,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "wonkwh@gmail.com",
                      style: GoogleFonts.sourceCodePro(
                          textStyle: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20,
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

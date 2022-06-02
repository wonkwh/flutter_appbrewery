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
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              _getCard(
                contents: "+32 010 3424 3234",
                icon: Icons.phone,
              ),
              _getCard(
                contents: "wonkwh@email.com",
                icon: Icons.email,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getCard({String? contents, IconData? icon}) {
    String contents2;
    IconData leadingIconData;
    if (contents == null || icon == null) {
      contents2 = "empty";
      leadingIconData = Icons.abc;
    } else {
      contents2 = contents;
      leadingIconData = icon;
    }
    return Card(
      color: Colors.white,
      // padding: EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      child: ListTile(
        leading: Icon(
          leadingIconData,
          color: Colors.teal,
        ),
        title: Text(
          contents2,
          style: GoogleFonts.sourceCodePro(
              textStyle: TextStyle(
            color: Colors.teal.shade900,
            fontSize: 20,
          )),
        ),
      ),
    );
  }
}

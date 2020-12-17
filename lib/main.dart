import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'UI/screen/home_screen.dart';

void main() {
  runApp(StarWarsRandom());
}

class StarWarsRandom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Wars Game',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.aBeeZeeTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomePage(),
    );
  }
}

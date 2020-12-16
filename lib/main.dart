import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_wars_game/pages/home_page.dart';

void main() {
  runApp(StarWarsRandom());
}

class StarWarsRandom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Wars Game',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.aBeeZeeTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'UI/screen/game_page.dart';
import 'UI/screen/home_page.dart';
import 'package:provider/provider.dart';

import 'models/star_wars_game.dart';

void main() {
  runApp(StarWarsRandom());
}

class StarWarsRandom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StarWarsGame(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/game': (context) => GamePage(),
        },
        title: 'Star Wars Game',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          backgroundColor: Colors.white,
          textTheme: GoogleFonts.aBeeZeeTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
      ),
    );
  }
}

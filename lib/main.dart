import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_wars_game/UI/screen/statistic_page.dart';
import 'package:star_wars_game/models/star_wars_game.dart';
import 'UI/screen/game_page.dart';
import 'UI/screen/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(StarWarsRandom());
}

class StarWarsRandom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StarWarsGame>(
      create: (context) => StarWarsGame(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/game': (context) => GamePage(),
          '/statistic' : (context) => StatisticPage(),
        },
        title: 'Star Wars Game',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          backgroundColor: Colors.white,
          textTheme: GoogleFonts.robotoSlabTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
      ),
    );
  }
}

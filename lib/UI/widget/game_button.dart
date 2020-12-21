import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_game/models/star_wars_game.dart';

class GameButton extends StatelessWidget {
  final String type;
  GameButton({@required this.type});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      focusColor: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 25,
      ),
      color: Colors.black.withOpacity(.7),
      onPressed: () {
        context.read<StarWarsGame>().setGameType(type);
        Navigator.pushNamed(context, '/game');
      },
      child: Text(
        type,
        style: TextStyle(
          color: Colors.amber,
          fontFamily: 'StarJedi',
          fontSize: 26,
        ),
      ),
    );
  }
}

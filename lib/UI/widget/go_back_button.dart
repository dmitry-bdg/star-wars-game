import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_game/models/star_wars_game.dart';

class GoBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      child: RaisedButton(
        color: Colors.black.withOpacity(.7),
        onPressed: () {
          Navigator.pop(context);
          context.read<StarWarsGame>().clearGameState();
        },
        child: Text('Go back!',
          style: TextStyle(
            color: Colors.amber,
            fontFamily: 'StarJedi',
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

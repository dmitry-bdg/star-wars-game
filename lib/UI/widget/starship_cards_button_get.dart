import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_game/models/star_wars_game.dart';

class StarShipCardButton extends StatelessWidget {
  final String player;

  StarShipCardButton({@required this.player});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 80),
      child: RaisedButton(
        elevation: 5,
        focusColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 10,
        ),
        color: Colors.black.withOpacity(.7),
        onPressed: () {
          final readState = context.read<StarWarsGame>();

          if (player == 'player1') {
            readState.loadDataPlayer1();
            readState.getGameState['isGameStart'] = true;
            readState.getGameState['isFirstPlayerGet'] = true;
          } else if (player == 'player2') {
            readState.loadDataPlayer2();
            readState.getGameState['isGameStart'] = true;
            readState.getGameState['isSecondPlayerGet'] = true;
          } else if (readState.getGameState['isFirstPlayerGet'] &&
              readState.getGameState['isSecondPlayerGet']) {
            readState.getGameState['isGameEnd'] = true;
          }
        },
        child: Text(
          'Get',
          style: TextStyle(
            color: Colors.amber,
            fontFamily: 'StarJedi',
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}

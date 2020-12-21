import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_game/models/star_wars_game.dart';

class PeopleCardInfo extends StatelessWidget {
  final String player;

  PeopleCardInfo({this.player});

  @override
  Widget build(BuildContext context) {
    final watchState = context.watch<StarWarsGame>();
    print(player);
    final resData = player == 'player1'
        ? watchState.getDataPlayer1
        : watchState.getDataPlayer2;

    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Hero: ${resData.name}',
            style: TextStyle(
              fontSize: 20,
              color: Colors.amber,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(.8, -.2),
                ),
              ],
            ),
          ),
          Text(
            'His Mass: ${resData.mass == 'unknown' ? '0' : resData.mass}',
            style: TextStyle(
                fontSize: 20,
              color: Colors.amber,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(.8, -.2),
                ),
              ],
            ),
          ),
          Text(
            'Was Born in: ${resData.birthYear}',
            style: TextStyle(
                fontSize: 20,
              color: Colors.amber,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(.8, -.2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

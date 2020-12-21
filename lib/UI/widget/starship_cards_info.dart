import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_game/models/star_wars_game.dart';

class StarShipsCardInfo extends StatelessWidget {
  final String player;

  StarShipsCardInfo({this.player});

  @override
  Widget build(BuildContext context) {
    final watchState = context.watch<StarWarsGame>();
    print(player);
    final resData = player == 'player1'
        ? watchState.getDataPlayer1
        : watchState.getDataPlayer2;

    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Starship name: ${resData.name}',
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
              'His length: ${resData.length == 'unknown' ? '0' : resData.length}',
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
              'Hyperdrive rating: ${resData.hyperdriveRating}',
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
      ),
    );
  }
}

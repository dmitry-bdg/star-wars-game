import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_game/UI/widget/people_cards_button_get.dart';
import 'package:star_wars_game/UI/widget/people_cards_info.dart';
import 'package:star_wars_game/UI/widget/people_cards_title.dart';
import 'package:star_wars_game/models/star_wars_game.dart';

class PeopleCard extends StatelessWidget {
  final String player;
  PeopleCard({this.player});

  @override
  Widget build(BuildContext context) {
    final watchState = context.watch<StarWarsGame>();
    final isPlayer = player == 'player1' ? 'FirstPlayer' : 'SecondPlayer';

    return Flexible(
      child: Card(
        color: Colors.black54,
        elevation: 4,
        margin: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PeopleCardTitle(player: player,),
            Visibility(
              visible: !watchState.getGameState['is${isPlayer}Get'],
                child: PeopleCardButton(player: player,)),
            Visibility(
              visible: watchState.getGameState['is${isPlayer}Get'],
                child: PeopleCardInfo(player: player,)),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_game/UI/widget/go_back_button.dart';
import 'package:star_wars_game/UI/widget/logo_AppBar.dart';
import 'package:star_wars_game/UI/widget/people_cards.dart';
import 'package:star_wars_game/UI/widget/starship_cards.dart';
import 'package:star_wars_game/UI/widget/submit_button.dart';
import 'package:star_wars_game/models/star_wars_game.dart';

class GamePage extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    final watchState = context.watch<StarWarsGame>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: LogoAppBar(titleData: 'Start Game'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            watchState.getGameType == 'people'
                ? PeopleCard(player: 'player1')
                : StarShipsCard(player: 'player1'),
            SubmitButton(type: watchState.getGameType,),
            watchState.getGameType == 'people'
                ? PeopleCard(player: 'player2')
                : StarShipsCard(player: 'player2'),
            GoBackButton(),
          ],
        ),
      ),
    );
  }
}

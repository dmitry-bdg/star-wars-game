import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_game/UI/widget/go_back_button.dart';
import 'package:star_wars_game/UI/widget/logo_AppBar.dart';
import 'package:star_wars_game/models/star_wars_game.dart';

class GamePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
          children: [
            Flexible(
              child: Container(
                margin: const EdgeInsets.all(5),
                width: double.infinity,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Text('Player 1'),
                    RaisedButton(
                      elevation: 5,
                      onPressed: () {
                        print(context.read<StarWarsGame>().getGameState);
                      },
                      child: Text('Get'),
                    ),
                    Text(context.watch<StarWarsGame>().getGameType),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.all(5),
                width: double.infinity,
                color: Colors.grey,
                child: Column(
                  children: [
                    Text('Player 2'),
                    RaisedButton(
                      animationDuration: Duration(seconds: 1),
                      elevation: 5,
                      onPressed: () {
                        print(context.read<StarWarsGame>().getGameState);
                      }, // !
                      child: Text('Get'),
                    ),
                    Text(context.watch<StarWarsGame>().getGameType),
                  ],
                ),
              ),
            ),
            // GoBackButton(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:star_wars_game/UI/widget/go_back_button.dart';
import 'package:star_wars_game/UI/widget/logo_AppBar.dart';
import 'package:star_wars_game/resources/starwars_api_provider.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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
                      StarWarsApi _api = StarWarsApi('starships');
                      _api.getData.then((value) => print(value));
                    },
                    child: Text('Get'),
                  ),
                ],
              ),
            )),
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
                      StarWarsApi _api = StarWarsApi('starships');
                      _api.getData.then((value) => print(value));
                    },
                    child: Text('Get'),
                  ),
                ],
              ),
            )),
            GoBackButton(),
          ],
        ),
      ),
    );
  }
}

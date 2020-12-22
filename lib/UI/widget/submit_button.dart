import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_game/models/star_wars_game.dart';

class SubmitButton extends StatelessWidget {
  final String type;

  SubmitButton({@required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      child: RaisedButton(
        color: Colors.black.withOpacity(.7),
        onPressed: () =>
            showDialog(context: context, builder: (context) => ResultWidget()),
        child: Text(
          'check ${type == 'people' ? 'mass' : 'length'}',
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

class ResultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final watchState = context.watch<StarWarsGame>();
    final type = watchState.getGameType;

    return AlertDialog(
      title: Text('Winner is:'),
      content: Text(
          '${type == 'people' ? watchState.getPeopleWinner() :
          watchState.getStarShipsWinner()}.'),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
            context.read<StarWarsGame>().clearGameState();
          },
          child: Text('Cancel'),
        ),
      ],
    );
  }
}

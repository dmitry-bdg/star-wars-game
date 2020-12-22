import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars_game/models/star_wars_game.dart';

class ViewStatistic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final writeState = context.watch<StarWarsGame>();

    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(top: 40.0),
      alignment: Alignment.topCenter,
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: {},
        border: TableBorder.symmetric(
          inside: BorderSide(color: Colors.black26, style: BorderStyle.solid),
        ),
        children: [
          TableRow(children: [
            Text(
              'Player / Game',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'People',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Starship',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          TableRow(children: [
            Text(
              'Player 1',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              '0',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              '0',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ]),
          TableRow(children: [
            Text(
              'Player 2',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              '0',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              '0',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

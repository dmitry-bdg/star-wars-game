import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'card_choose_game_type.dart';

class ButtonGameType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(4),
        child: Column(
          children: [
            CardGameType(type: 'people'),
            CardGameType(type: 'starships'),
          ],
        ));
  }
}

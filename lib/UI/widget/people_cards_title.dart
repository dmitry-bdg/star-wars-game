import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PeopleCardTitle extends StatelessWidget {
  final String player;

  PeopleCardTitle({@required this.player});

  @override
  Widget build(BuildContext context) {
    final titlePlayer = player == 'player1' ? 'First Player' : 'Second Player';
    return Container(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
        ),
        child: Center(
          child: Text(
            titlePlayer,
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.amber,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

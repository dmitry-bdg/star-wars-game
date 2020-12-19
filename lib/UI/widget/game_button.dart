import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  final String type;
  GameButton({@required this.type});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      focusColor: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 25,
      ),
      color: Colors.black.withOpacity(.7),
      onPressed: () {
        Navigator.pushNamed(context, '/game');
        // FIX Game Type!!!
      },
      child: Text(
        type,
        style: TextStyle(
          color: Colors.amber,
          fontFamily: 'StarJedi',
          fontSize: 26,
        ),
      ),
    );
  }
}

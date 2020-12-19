import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 151.7,
      ),
      elevation: 5,
      color: Colors.black.withOpacity(.7),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text('Go back!',
        style: TextStyle(
          color: Colors.amber,
          fontFamily: 'StarJedi',
          fontSize: 20,
        ),
      ),
    );
  }
}

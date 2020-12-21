import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoAppBar extends StatelessWidget {
  final String titleData;
  LogoAppBar({@required this.titleData});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$titleData',
      style: TextStyle(
        fontFamily: 'StarJedi',
        fontSize: 22,
        color: Colors.black,
        shadows: [
          Shadow(offset: Offset(-.8, -.8), color: Colors.amber),
          Shadow(offset: Offset(.8, -.8), color: Colors.amber),
          Shadow(offset: Offset(.8, .8), color: Colors.amber),
          Shadow(offset: Offset(-.8, .8), color: Colors.amber),
        ],
      ),
    );
  }
}

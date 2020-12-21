import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget {
  final String titleData;
  LogoAppBar({@required this.titleData});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        FloatingActionButton(onPressed: () {},
        child: Icon(Icons.assessment_outlined),
            backgroundColor: Colors.black54,
        ),
        Container(
          margin: const EdgeInsets.only(left: 60),
          child: Text(
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
          ),
        ),
      ],
    );
  }
}

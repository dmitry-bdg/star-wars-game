import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget {
  final String titleData;

  LogoAppBar({@required this.titleData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/statistic');
              },
              child: Icon(
                Icons.assessment_outlined,
                color: Colors.amber,
              ),
              backgroundColor: Colors.black54,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 9),
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
          ),
        ],
      ),
    );
  }
}

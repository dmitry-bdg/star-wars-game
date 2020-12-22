import 'package:flutter/material.dart';
import 'package:star_wars_game/UI/widget/logo_AppBar.dart';

class StatisticPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title:
        LogoAppBar(
          titleData:
            'Statistic',
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Statistic Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

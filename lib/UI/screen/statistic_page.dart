import 'package:flutter/material.dart';
import 'package:star_wars_game/UI/widget/go_back_button.dart';
import 'package:star_wars_game/UI/widget/logo_app_bar.dart';
import 'package:star_wars_game/UI/widget/statistic_view.dart';

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
            'Game statistic',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: ViewStatistic(),
          ),
          Expanded(
              flex: 1,
              child: GoBackButton()),
        ],
      ),
    );
  }
}

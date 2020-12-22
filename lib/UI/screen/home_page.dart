import 'package:flutter/material.dart';
import 'package:star_wars_game/UI/widget/button_game_type.dart';
import 'package:star_wars_game/UI/widget/logo_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: LogoAppBar(titleData: 'Star Wars Random'),
      ),
      body: Container(
        child: ButtonGameType(),
      ),
    );
  }
}

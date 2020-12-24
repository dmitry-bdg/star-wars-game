import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(StarWarsRandom());
}

class StarWarsRandom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Star Wars Game',
      theme: ThemeData(),
    );
  }
}
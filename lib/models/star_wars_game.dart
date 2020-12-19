import 'package:flutter/material.dart';
import 'package:star_wars_game/models/people.dart';
import 'package:star_wars_game/resources/starwars_api_provider.dart';

class StarWarsGame with ChangeNotifier{
    StarWarsApi api;
    People people;


}

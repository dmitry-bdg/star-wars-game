import 'package:flutter/material.dart';
import 'package:star_wars_game/models/people.dart';
import 'package:star_wars_game/models/starships.dart';
import 'package:star_wars_game/resources/starwars_api_provider.dart';

class StarWarsGame with ChangeNotifier {
  StarWarsApi _api;
  People _people;
  StarShips _ships;
  String _gameType;
  Map<String, dynamic> _gameState;

  StarWarsGame() :
        _gameState = {
          'isGameStart': false,
          'isFirstPlayerGet': false,
          'isSecondPlayerGet': false,
          'gameType': '',
        };

  Map<String, dynamic> get getGameState {
    return _gameState;
  }

  String get getGameType {
    return _gameType;
  }

  void gameUp() {
    _gameState['isGameStart'] = true;
    notifyListeners();
  }

  void setGameType(String type) {
    this._gameType = type;
    _gameState['gameType'] = this._gameType;
    notifyListeners();
  }
}


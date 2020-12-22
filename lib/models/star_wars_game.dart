import 'package:flutter/material.dart';
import 'package:star_wars_game/models/people.dart';
import 'package:star_wars_game/models/starships.dart';
import 'package:star_wars_game/resources/starwars_api.dart';

class StarWarsGame with ChangeNotifier {
  final Map<String, dynamic> _gameState;
  People _peoplePlayer1 = People();
  People _peoplePlayer2 = People();
  StarShips _shipsPlayer1 = StarShips();
  StarShips _shipsPlayer2 = StarShips();
  String _gameType;

  StarWarsGame()
      : _gameState = {
          'isGameStart': false,
          'isFirstPlayerGet': false,
          'isSecondPlayerGet': false,
          'isGameEnd': false,
          'gameType': '',
        };

  Map<String, dynamic> get getGameState {
    return _gameState;
  }

  String get getGameType {
    return _gameType;
  }

  get getDataPlayer1 {
    if (_gameType == 'people') {
      return _peoplePlayer1;
    }

    if (_gameType == 'starships') {
      return _shipsPlayer1;
    }
  }

  get getDataPlayer2 {
    if (_gameType == 'people') {
      return _peoplePlayer2;
    }

    if (_gameType == 'starships') {
      return _shipsPlayer2;
    }
  }

  void gameUp() {
    _gameState['isGameStart'] = true;
    notifyListeners();
  }

  void setGameType(String type) {
    this._gameType = type;
    _gameState['gameType'] = this._gameType;
  }

  void clearGameState() {
    _gameType = '';
    _gameState.forEach((key, value) {
      _gameState[key] = false;
    });
  }

  void loadDataPlayer1() async {
    StarWarsApi _api = StarWarsApi.getCardByType(_gameType);

    if (_gameType == 'people') {
      Future<People> people = _api.getPeopleData(_gameType);
      _peoplePlayer1 = await people;
    }

    if (_gameType == 'starships') {
      Future<StarShips> ships = _api.getStarShipsData(_gameType);
      _shipsPlayer1 = await ships;
    }
    notifyListeners();
  }

  void loadDataPlayer2() async {
    StarWarsApi _api = StarWarsApi.getCardByType(_gameType);

    if (_gameType == 'people') {
      Future<People> people = _api.getPeopleData(_gameType);
      _peoplePlayer2 = await people;
    }

    if (_gameType == 'starships') {
      Future<StarShips> ships = _api.getStarShipsData(_gameType);
      _shipsPlayer2 = await ships;
    }
    notifyListeners();
  }

  num _getPreIntNumber(String string) {

    if (string != null) {
      num result = num.parse((string == 'unknown' ?
      '0' : string).replaceAll(',', '.'));

      if (result < 2.00) {
        print(result);
        return result * 1000;
      }

      return result;
    }
    return null;
  }

  String getPeopleWinner() {
    num _massPl1 = _getPreIntNumber(_peoplePlayer1.mass);
    num _massPl2 = _getPreIntNumber(_peoplePlayer2.mass);

    if (_massPl1 > _massPl2) {
      return 'Player 1 Winn! Congrats!';
    }

    if (_massPl1 == _massPl2) {
      return 'Oops nobody won, the mass is equal.';
    }

    return 'Player 2 Win! Congrats!';
  }

  String getStarShipsWinner() {
    num _lengthPl1 = _getPreIntNumber(_shipsPlayer1.length);
    num _lengthPl2 = _getPreIntNumber(_shipsPlayer2.length);

    if (_lengthPl1 > _lengthPl2) {
      return 'Player 1 Winn! Congrats!';
    }

    if (_lengthPl1 == _lengthPl2) {
      return 'Oops nobody won, the length is equal.';
    }

    return 'Player 2 Win! Congrats!';
  }

  getPlayersStatistic() {
    // int count = 0;
    return '';
  }
}

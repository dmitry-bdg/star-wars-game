import 'package:flutter/material.dart';
import 'package:star_wars_game/models/people.dart';
import 'package:star_wars_game/models/starships.dart';
import 'package:star_wars_game/resources/starwars_api.dart';

class StarWarsGame with ChangeNotifier {
  People _peoplePlayer1 = People();
  People _peoplePlayer2 = People();
  StarShips _shipsPlayer1 = StarShips();
  StarShips _shipsPlayer2 = StarShips();
  List<String> statistic = [];
  String _gameType;
  Map<String, dynamic> _gameState;

  StarWarsGame()
      : _gameState = {
          'isGameStart': false,
          'isFirstPlayerGet': false,
          'isSecondPlayerGet': false,
          'isGameEnd': false,
          'gameType': '',
        };

  Map<String, dynamic> get getGameState {
    print(_gameState);
    return _gameState;
  }

  String get getGameType {
    return _gameType;
  }

  get getDataPlayer1 {
    if (_gameType == 'people') {
      print(_peoplePlayer1.runtimeType);
      return _peoplePlayer1;
    }

    if (_gameType == 'starships') {
      print(_shipsPlayer1.toString());
      return _shipsPlayer1;
    }
  }

  get getDataPlayer2 {
    if (_gameType == 'people') {
      print(_peoplePlayer2.toString());
      return _peoplePlayer2;
    }

    if (_gameType == 'starships') {
      print(_shipsPlayer2.toString());
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
    notifyListeners();
  }

  void clearGameState() {
    _gameType = '';
    _gameState.forEach((key, value) {
      key == 'gameType' ? _gameState[key] : _gameState[key] = false;
    });
    notifyListeners();
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

  String getPeopleWinner() {
    if (num.parse(_peoplePlayer1.mass) > num.parse(_peoplePlayer2.mass)) {
      return 'Player 1 Win!';
    }

    notifyListeners();
    return 'Player 2 Win!';
  }

  String getStarShipsWinner() {
    if (num.parse(_shipsPlayer1.length) > num.parse(_shipsPlayer2.length)) {
      return 'Player 1 Win!';
    }
    notifyListeners();
    return 'Player 2 Win!';
  }

  String getPlayersStatistic() {
    int count = 0;
    statistic.map((el) => {});
    return '';
  }


}

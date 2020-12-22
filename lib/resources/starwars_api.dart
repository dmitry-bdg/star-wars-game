import 'dart:math';
import 'package:dio/dio.dart';
import 'package:star_wars_game/models/people.dart';
import 'package:star_wars_game/models/starships.dart';

class StarWarsApi {
  final _dio = Dio();
  String type;
  num id;

  StarWarsApi();

  StarWarsApi.getCardByType(this.type) :
        id = _getRandom(type);

  static int _getRandom(String type) {
    List<int> _validStarShipsId
    = [ 2, 3, 5, 9, 10, 11, 12, 13, 15, 17, 21, 22, 23, 27, 28, 29, 31, 32];
    int _randomPeopleId = Random().nextInt(82);
    int _randomStarShipsId = Random().nextInt(17);
    return type == 'people' ?
        (_randomPeopleId == 0 || _randomPeopleId == 17 ?
        _randomPeopleId + 1 : _randomPeopleId) :
        _validStarShipsId[_randomStarShipsId];
  }


  Future<People> getPeopleData(String type) async {
    try {
      Uri _url = _getURl(type, id);
      Response response = await _dio.get(_url.toString());
      People result = People.parseJson(response.data);
      return result;
    } on Exception catch (err) {
      print(err.toString());
    }
    return null;
  }

  Future<StarShips> getStarShipsData(String type) async {
      try {
        Uri _url = _getURl(type, id);
        Response response = await _dio.get(_url.toString());
        StarShips result = StarShips.parseJson(response.data);
        return result;
      } on Exception catch (err) {
        print(err.toString());
      }
    return null;
  }

  Uri _getURl(String type, num id) {
    String _apiBaseUri = 'swapi.dev';
    String _apiDataPath = '/api/';
    return Uri(
      scheme: "https",
      host: _apiBaseUri,
      path: '$_apiDataPath$type/$id/',
    );
  }
}
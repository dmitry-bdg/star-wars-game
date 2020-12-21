import 'package:star_wars_game/resources/starwars_api.dart';

class People {
  String name, hairColor, eyeColor, birthYear, height, mass;

  People();

  People.parseJson(Map<String, dynamic> json)
      :
        name = json['name'],
        hairColor = json['hair_color'],
        eyeColor = json['eye_color'],
        birthYear = json['birth_year'],
        height = json['height'],
        mass = json['mass'];

  @override
  String toString() {
    return 'Our Hero: '
        'Name - [$name], '
        'Mass - [$mass], '
        'Height - [$height], '
        'Hair color - [$hairColor], '
        'Eye color - [$eyeColor], '
        'Birth Year - [$birthYear], ';
  }
}


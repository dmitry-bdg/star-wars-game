import 'package:star_wars_game/resources/starwars_api.dart';

class People {
  String name, hairColor, eyeColor, birthYear, height, mass;

  People();

  People.parseJson(Map<String, dynamic> json)
      :
        name = json['name'] ?? null,
        hairColor = json['hair_color'] ?? null,
        eyeColor = json['eye_color'] ?? null,
        birthYear = json['birth_year'] ?? null,
        height = json['height'] ?? null,
        mass = json['mass'] ?? null;

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


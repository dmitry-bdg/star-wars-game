class People {
  String name, hairColor, eyeColor, birthYear;
  num height, mass;

  People(this.name, this.hairColor, this.eyeColor, this.birthYear, this.height,
      this.mass);

  People.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        hairColor = json['hair_color'],
        eyeColor = json['eye_color'],
        birthYear = json['birth_year'],
        height = num.parse(json['height']),
        mass = num.parse(json['mass']);

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

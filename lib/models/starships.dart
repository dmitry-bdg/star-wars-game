class StarShips {
String name, model, starshipClass, length, maxAtmospheringSpeed, constInCredits, hyperdriveRating;

// StarShips(this.name, this.model, this.constInCredits, this.starshipClass,
StarShips.parseJson(Map<String, dynamic> json) :
      name = json['name'],
      model = json['model'],
      starshipClass = json['starship_class'],
      constInCredits = json['const_in_credits'],
      length = json['length'],
      maxAtmospheringSpeed = json['max_atmosphering_speed'],
      hyperdriveRating = json['hyperdrive_rating'];

//     this.length, this.maxAtmospheringSpeed, this.hyperdriveRating);

  @override
  String toString() {
    return 'Starship: '
        'Name - [$name], '
        'Model - [$model], '
        'Starship Class - [$starshipClass], '
        'Length - [$length], '
        'Max Atmosphering Speed - [$maxAtmospheringSpeed], '
        'Const In Credits - [$constInCredits], '
        'Hyperdrive Rating - [$hyperdriveRating].';
  }
}

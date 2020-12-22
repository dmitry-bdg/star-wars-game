class StarShips {
  String name,
      model,
      starshipClass,
      length,
      maxAtmospheringSpeed,
      constInCredits,
      hyperdriveRating;

StarShips();

  StarShips.parseJson(Map<String, dynamic> json)
      : name = json['name'] ?? null,
        model = json['model'] ?? null,
        starshipClass = json['starship_class'] ?? null,
        constInCredits = json['const_in_credits'] ?? null,
        length = json['length'] ?? null,
        maxAtmospheringSpeed = json['max_atmosphering_speed'] ?? null,
        hyperdriveRating = json['hyperdrive_rating'] ?? null;

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

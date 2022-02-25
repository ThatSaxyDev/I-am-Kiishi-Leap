class Kiishi {
  final String name;
  final String carName;
  final String favouriteColour;
  final String favouriteOutfit;
  final String favouriteShoes;
  final String favouriteInstrument;
  final String frameWork;

  Kiishi({
    required this.name,
    required this.carName,
    required this.favouriteColour,
    required this.favouriteOutfit,
    required this.favouriteShoes,
    required this.favouriteInstrument,
    required this.frameWork,
    });

  factory Kiishi.fromJson(json) => Kiishi(
    name: json['name'] ?? 'default_name',
    carName: json['carName'] ?? 'default_car',
    favouriteColour: json['favouriteColour'] ?? 'default_colour',
    favouriteOutfit: json['favouriteOutfit'] ?? 'default_outfit',
    favouriteShoes: json['favouriteShoes'] ?? 'default_shoes',
    favouriteInstrument: json['favouriteInstrument'] ?? 'default_instrument',
    frameWork: json['frameWork'] ?? 'default_framework',
  );
}

import 'package:handy_and_d/models/character_model.dart';

class WebService {
  Future<List<CharacterModel>> fetchCharacters() async {
    List<Map<String, dynamic>> response = [
      {
        "name": "Archibald Kratan",
        "role": "Paladin",
        "race": "Dragonborn",
        "xp": 2125,
        "maxHP": 29,
        "ac": 16,
      },
      {
        "name": "Chapchap",
        "role": "Bard",
        "race": "Kenku",
        "xp": 100,
        "maxHP": 14,
        "ac": 10,
      },
    ];

    Iterable data = response;
    return data.map((character) => CharacterModel.fromJson(character)).toList();
    // } else {
    //   throw Exception("Failed to load characters");
    // }
  }
}

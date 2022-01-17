import 'package:handy_and_d/models/character_model.dart';

class WebService {
  Future<List<CharacterModel>> fetchCharacters() async {
    List<Map<String, dynamic>> response = [
      {
        "name": "Archibald Kratan",
        "role": 6,
        "race": "Dragonborn",
        "xp": 2125,
        "maxHP": 29,
        "ac": 16,
      },
      {
        "name": "Chapchap",
        "role": 1,
        "race": "Kenku",
        "xp": 100,
        "maxHP": 14,
        "ac": 10,
      },
      {
        "name": "Ku Shado",
        "role": 8,
        "race": "Kenku",
        "xp": 100,
        "maxHP": 12,
        "ac": 11,
      },
      {
        "name": "Grok",
        "role": 2,
        "race": "Tortle",
        "xp": 3000,
        "maxHP": 9,
        "ac": 16,
      },
      {
        "name": "Yun",
        "role": 3,
        "race": "Elve",
        "xp": 1200,
        "maxHP": 13,
        "ac": 11,
      },
    ];

    Iterable data = response;
    return data.map((character) => CharacterModel.fromJson(character)).toList();
    // } else {
    //   throw Exception("Failed to load characters");
    // }
  }
}

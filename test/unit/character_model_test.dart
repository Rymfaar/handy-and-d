import 'package:flutter_test/flutter_test.dart';
import 'package:handy_and_d/core/constants/role.dart';
import 'package:handy_and_d/models/character_model.dart';

void main() {
  group('When creating a Model from JSON', () {
    test(
        'Given JSON filled with data - Then should create a valid CharacterModel',
        () async {
      final Map<String, dynamic> response = <String, dynamic>{
        'name': 'Archibald Kratan',
        'role': 6,
        'race': 'Dragonborn',
        'xp': 2125,
        'maxHP': 29,
        'ac': 16,
        'abilities': <String, dynamic>{
          'str': 16,
          'dex': 15,
          'con': 12,
          'int': 8,
          'wis': 10,
          'cha': 14,
        },
      };
      final CharacterModel character = CharacterModel.fromJson(response);

      expect(character, isNotNull);
      expect(character.name, 'Archibald Kratan');
      expect(character.role, Role.PALADIN);
      expect(character.race, 'Dragonborn');
      expect(character.abilities['str'], 16);
      expect(character.abilities['dex'], 15);
      expect(character.abilities['con'], 12);
      expect(character.abilities['int'], 8);
      expect(character.abilities['wis'], 10);
      expect(character.abilities['cha'], 14);
      expect(character.xp, 2125);
      expect(character.maxHP, 29);
      expect(character.ac, 16);
    });

    test('Given JSON partially filled with data - Then should throw', () async {
      final Map<String, dynamic> response = <String, dynamic>{
        'name': 'Archibald Kratan',
      };

      expect(() => CharacterModel.fromJson(response),
          throwsA(isInstanceOf<TypeError>()));
    });

    test('Given empty JSON - Then should throw', () async {
      final Map<String, dynamic> response = <String, dynamic>{};

      expect(() => CharacterModel.fromJson(response),
          throwsA(isInstanceOf<TypeError>()));
    });
  });

  group('When creating a JSON from Model', () {
    test('Given a CharacterModel - Then should create a valid JSON', () async {
      final CharacterModel character = CharacterModel(
        name: 'Grok',
        role: Role.CLERIC,
        race: 'Turtle',
        xp: 1200,
        maxHP: 9,
        ac: 16,
        abilities: <String, int>{
          'str': 16,
          'dex': 15,
          'con': 12,
          'int': 8,
          'wis': 10,
          'cha': 14,
        },
      );
      final Map<String, dynamic> json = character.toJson();
      final Map<String, dynamic> abilities =
          json['abilities'] as Map<String, dynamic>;

      expect(json, isNotNull);
      expect(json['name'], 'Grok');
      expect(json['role'], 2);
      expect(json['race'], 'Turtle');
      expect(abilities.length, 6);
      expect(json['xp'], 1200);
      expect(json['maxHP'], 9);
      expect(json['ac'], 16);
    });
  });
}

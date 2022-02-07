import 'package:flutter_test/flutter_test.dart';
import 'package:handy_and_d/core/enums/role.dart';
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
      };
      final CharacterModel character = CharacterModel.fromJson(response);

      expect(character, isNotNull);
      expect(character.name, 'Archibald Kratan');
      expect(character.role, Role.PALADIN);
      expect(character.race, 'Dragonborn');
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
      );
      final Map<String, dynamic> json = character.toJson();

      expect(json, isNotNull);
      expect(json['name'], 'Grok');
      expect(json['role'], 2);
      expect(json['race'], 'Turtle');
      expect(json['xp'], 1200);
      expect(json['maxHP'], 9);
      expect(json['ac'], 16);
    });
  });
}

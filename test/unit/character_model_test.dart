import 'package:flutter_test/flutter_test.dart';
import 'package:handy_and_d/core/enums/role.dart';
import 'package:handy_and_d/models/character_model.dart';

void main() {
  test(
      "Given a character JSON When CharacterModel is created Then the model should contain all JSON's data",
      () async {
    // PREPARE
    final Map<String, dynamic> response = {
      "name": "Archibald Kratan",
      "role": 6,
      "race": "Dragonborn",
      "xp": 2125,
      "maxHP": 29,
      "ac": 16,
    };

    // ACT
    final character = CharacterModel.fromJson(response);

    // ASSERT
    expect(character, isNotNull);
    expect(character.name, "Archibald Kratan");
    expect(character.role, Role.PALADIN);
    expect(character.race, "Dragonborn");
    expect(character.xp, 2125);
    expect(character.maxHP, 29);
    expect(character.ac, 16);
  });

  test(
      "Given a character JSON with missing data When CharacterModel is created Then the model should contain default data",
      () async {
    // PREPARE
    final Map<String, dynamic> response = {
      "role": 0,
    };

    // ACT
    final character = CharacterModel.fromJson(response);

    // ASSERT
    expect(character, isNotNull);
    expect(character.name, "");
    expect(character.role, Role.BARBARIAN);
    expect(character.race, "");
    expect(character.xp, 0);
    expect(character.maxHP, 0);
    expect(character.ac, 0);
  });

  test(
      "Given a character model When creating a JSON Then the JSON should contain the model's data",
      () async {
    // PREPARE
    final character = CharacterModel(
      name: "Grok",
      role: Role.CLERIC,
      race: "Turtle",
      xp: 1200,
      maxHP: 9,
      ac: 16,
    );

    // ACT
    final json = character.toJson();

    // ASSERT
    expect(json, isNotNull);
    expect(json["name"], "Grok");
    expect(json["role"], 2);
    expect(json["race"], "Turtle");
    expect(json["xp"], 1200);
    expect(json["maxHP"], 9);
    expect(json["ac"], 16);
  });

  test(
      "Given a character model with missing data When creating a JSON Then the JSON should contain default data",
      () async {
    // PREPARE
    final character = CharacterModel(
      name: null,
      role: Role.CLERIC,
      race: null,
      xp: null,
      maxHP: null,
      ac: null,
    );

    // ACT
    final json = character.toJson();

    // ASSERT
    expect(json, isNotNull);
    expect(json["name"], "");
    expect(json["role"], 2);
    expect(json["race"], "");
    expect(json["xp"], 0);
    expect(json["maxHP"], 0);
    expect(json["ac"], 0);
  });
}

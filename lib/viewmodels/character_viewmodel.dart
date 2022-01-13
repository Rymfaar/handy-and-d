import 'package:flutter/material.dart';
import 'package:handy_and_d/core/enums/role.dart';
import 'package:handy_and_d/models/character_model.dart';

class CharacterViewModel {
  final CharacterModel _characterModel;

  CharacterViewModel({required CharacterModel character})
      : _characterModel = character;

  String? get name => _characterModel.name;
  Role get role => _characterModel.role;
  String? get race => _characterModel.race;
  int? get xp => _characterModel.xp;
  int? get maxHP => _characterModel.maxHP;
  int? get ac => _characterModel.ac;

  String get roleLabel {
    switch (_characterModel.role) {
      case Role.BARBARIAN:
        return "Barbarian";
      case Role.BARD:
        return "Bard";
      case Role.CLERIC:
        return "Cleric";
      case Role.DRUID:
        return "Druid";
      case Role.FIGHTER:
        return "Fighter";
      case Role.MONK:
        return "Monk";
      case Role.PALADIN:
        return "Paladin";
      case Role.RANGER:
        return "Ranger";
      case Role.ROGUE:
        return "Rogue";
      case Role.SORCERER:
        return "Sorcerer";
      case Role.WARLOCK:
        return "Warlock";
      case Role.WIZARD:
        return "Wizard";
      case Role.ARTIFICER:
        return "Artificer";
    }
  }

  Color get primaryColor {
    switch (_characterModel.role) {
      case Role.BARBARIAN:
        return const Color(Barbarian.PRIMARY);
      case Role.BARD:
        return const Color(Bard.PRIMARY);
      case Role.CLERIC:
        return const Color(Cleric.PRIMARY);
      case Role.DRUID:
        return const Color(Druid.PRIMARY);
      case Role.FIGHTER:
        return const Color(Fighter.PRIMARY);
      case Role.MONK:
        return const Color(Monk.PRIMARY);
      case Role.PALADIN:
        return const Color(Paladin.PRIMARY);
      case Role.RANGER:
        return const Color(Ranger.PRIMARY);
      case Role.ROGUE:
        return const Color(Rogue.PRIMARY);
      case Role.SORCERER:
        return const Color(Sorcerer.PRIMARY);
      case Role.WARLOCK:
        return const Color(Warlock.PRIMARY);
      case Role.WIZARD:
        return const Color(Wizard.PRIMARY);
      case Role.ARTIFICER:
        return const Color(Artificer.PRIMARY);
    }
  }

  Color get secondaryColor {
    switch (_characterModel.role) {
      case Role.BARBARIAN:
        return const Color(Barbarian.SECONDARY);
      case Role.BARD:
        return const Color(Bard.SECONDARY);
      case Role.CLERIC:
        return const Color(Cleric.SECONDARY);
      case Role.DRUID:
        return const Color(Druid.SECONDARY);
      case Role.FIGHTER:
        return const Color(Fighter.SECONDARY);
      case Role.MONK:
        return const Color(Monk.SECONDARY);
      case Role.PALADIN:
        return const Color(Paladin.SECONDARY);
      case Role.RANGER:
        return const Color(Ranger.SECONDARY);
      case Role.ROGUE:
        return const Color(Rogue.SECONDARY);
      case Role.SORCERER:
        return const Color(Sorcerer.SECONDARY);
      case Role.WARLOCK:
        return const Color(Warlock.SECONDARY);
      case Role.WIZARD:
        return const Color(Wizard.SECONDARY);
      case Role.ARTIFICER:
        return const Color(Artificer.SECONDARY);
    }
  }
}

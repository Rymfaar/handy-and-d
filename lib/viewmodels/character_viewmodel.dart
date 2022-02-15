import 'package:flutter/material.dart';
import '../core/constants/proficiency.dart';
import '../core/constants/role.dart';
import '../models/character_model.dart';

class CharacterViewModel {
  CharacterViewModel({required CharacterModel character})
      : _characterModel = character;

  final CharacterModel _characterModel;

  String get name => _characterModel.name;
  Role get role => _characterModel.role;
  String get race => _characterModel.race;
  int get xp => _characterModel.xp;
  int get maxHP => _characterModel.maxHP;
  int get ac => _characterModel.ac;

  int get strength => _characterModel.abilities['str'] ?? 10;
  int get dexterity => _characterModel.abilities['dex'] ?? 10;
  int get constitution => _characterModel.abilities['con'] ?? 10;
  int get intelligence => _characterModel.abilities['int'] ?? 10;
  int get wisdom => _characterModel.abilities['wis'] ?? 10;
  int get charisma => _characterModel.abilities['cha'] ?? 10;

  int get strengthMod => ((strength - 10) / 2).floor();
  int get dexterityMod => ((dexterity - 10) / 2).floor();
  int get constitutionMod => ((constitution - 10) / 2).floor();
  int get intelligenceMod => ((intelligence - 10) / 2).floor();
  int get wisdomMod => ((wisdom - 10) / 2).floor();
  int get charismaMod => ((charisma - 10) / 2).floor();

  // TODO(rymfire): profiencies
  // STR-based skills
  int get athletics => strengthMod;
  // DEX-based skills
  int get acrobatics => dexterityMod;
  int get stealth => dexterityMod;
  int get sleightOfHands => dexterityMod;
  // INT-based skills
  int get arcana => intelligenceMod;
  int get history => intelligenceMod;
  int get nature => intelligenceMod;
  int get religion => intelligenceMod;
  int get investigation => intelligenceMod;
  // WIS-based skills
  int get animalHandling => wisdomMod;
  int get deception => wisdomMod;
  int get medicine => wisdomMod;
  int get insight => wisdomMod;
  int get survival => wisdomMod;
  // CHA-based skills
  int get performance => charismaMod;
  int get persuasion => charismaMod;
  int get perception => charismaMod;
  int get intimidation => charismaMod;

  List<Proficiency> get proficiencies => _characterModel.proficiencies;

  int get level {
    if (xp >= 190000) {
      return 20;
    }
    if (xp >= 171000) {
      return 19;
    }
    if (xp >= 153000) {
      return 18;
    }
    if (xp >= 136000) {
      return 17;
    }
    if (xp >= 120000) {
      return 16;
    }
    if (xp >= 105000) {
      return 15;
    }
    if (xp >= 91000) {
      return 14;
    }
    if (xp >= 78000) {
      return 13;
    }
    if (xp >= 66000) {
      return 12;
    }
    if (xp >= 55000) {
      return 11;
    }
    if (xp >= 45000) {
      return 10;
    }
    if (xp >= 36000) {
      return 9;
    }
    if (xp >= 28000) {
      return 8;
    }
    if (xp >= 21000) {
      return 7;
    }
    if (xp >= 15000) {
      return 6;
    }
    if (xp >= 10000) {
      return 5;
    }
    if (xp >= 6000) {
      return 4;
    }
    if (xp >= 3000) {
      return 3;
    }
    if (xp >= 1000) {
      return 2;
    }
    if (xp >= 0) {
      return 1;
    }
    return 0;
  }

  int get proficiencyBonus {
    final int level = this.level;
    if (level >= 17) {
      return 6;
    } else if (level >= 13) {
      return 5;
    } else if (level >= 9) {
      return 4;
    } else if (level >= 5) {
      return 3;
    } else {
      return 2;
    }
  }

  String get roleLabel {
    switch (_characterModel.role) {
      case Role.BARBARIAN:
        return 'Barbarian';
      case Role.BARD:
        return 'Bard';
      case Role.CLERIC:
        return 'Cleric';
      case Role.DRUID:
        return 'Druid';
      case Role.FIGHTER:
        return 'Fighter';
      case Role.MONK:
        return 'Monk';
      case Role.PALADIN:
        return 'Paladin';
      case Role.RANGER:
        return 'Ranger';
      case Role.ROGUE:
        return 'Rogue';
      case Role.SORCERER:
        return 'Sorcerer';
      case Role.WARLOCK:
        return 'Warlock';
      case Role.WIZARD:
        return 'Wizard';
      case Role.ARTIFICER:
        return 'Artificer';
    }
  }

  String get roleImage {
    return 'assets/images/im_${roleLabel.toLowerCase()}.svg';
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

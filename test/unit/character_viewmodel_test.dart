import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:handy_and_d/core/enums/role.dart';
import 'package:handy_and_d/models/character_model.dart';
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';

void main() {
  test(
      "Given a CharacterViewModel - When getting it's data - Then getting the correct data",
      () async {
    final characterViewModel = CharacterViewModel(
      character: CharacterModel(
        name: "Yun",
        role: Role.DRUID,
        race: "Elve",
        xp: 300,
        maxHP: 12,
        ac: 11,
      ),
    );

    expect(characterViewModel.name, "Yun");
    expect(characterViewModel.role, Role.DRUID);
    expect(characterViewModel.race, "Elve");
    expect(characterViewModel.xp, 300);
    expect(characterViewModel.maxHP, 12);
    expect(characterViewModel.ac, 11);
  });

  test(
      "Given a character viewmodel where xp is set When getting character's level Then returns correct level",
      () async {
    final _xpSteps = [
      190000,
      171000,
      153000,
      136000,
      120000,
      105000,
      91000,
      78000,
      66000,
      55000,
      45000,
      36000,
      28000,
      21000,
      15000,
      10000,
      6000,
      3000,
      1000,
      0,
    ];
    int _level = 20;

    for (var step in _xpSteps) {
      final characterViewModel = CharacterViewModel(
        character: CharacterModel(
          name: "Yun",
          role: Role.DRUID,
          race: "Elve",
          xp: step,
          maxHP: 12,
          ac: 11,
        ),
      );
      expect(characterViewModel.level, _level);
      _level -= 1;
    }
  });

  test(
      "Given a character viewmodel where role is defined When getting it's role label / colors Then gives the correct data",
      () async {
    final _roles = [
      Role.BARBARIAN,
      Role.BARD,
      Role.CLERIC,
      Role.DRUID,
      Role.FIGHTER,
      Role.MONK,
      Role.PALADIN,
      Role.RANGER,
      Role.ROGUE,
      Role.SORCERER,
      Role.WARLOCK,
      Role.WIZARD,
      Role.ARTIFICER,
    ];
    final _results = [
      {
        "roleLabel": "Barbarian",
        "roleImage": "assets/images/im_barbarian.svg",
        "primaryColor": const Color(Barbarian.PRIMARY),
        "secondaryColor": const Color(Barbarian.SECONDARY),
      },
      {
        "roleLabel": "Bard",
        "roleImage": "assets/images/im_bard.svg",
        "primaryColor": const Color(Bard.PRIMARY),
        "secondaryColor": const Color(Bard.SECONDARY),
      },
      {
        "roleLabel": "Cleric",
        "roleImage": "assets/images/im_cleric.svg",
        "primaryColor": const Color(Cleric.PRIMARY),
        "secondaryColor": const Color(Cleric.SECONDARY),
      },
      {
        "roleLabel": "Druid",
        "roleImage": "assets/images/im_druid.svg",
        "primaryColor": const Color(Druid.PRIMARY),
        "secondaryColor": const Color(Druid.SECONDARY),
      },
      {
        "roleLabel": "Fighter",
        "roleImage": "assets/images/im_fighter.svg",
        "primaryColor": const Color(Fighter.PRIMARY),
        "secondaryColor": const Color(Fighter.SECONDARY),
      },
      {
        "roleLabel": "Monk",
        "roleImage": "assets/images/im_monk.svg",
        "primaryColor": const Color(Monk.PRIMARY),
        "secondaryColor": const Color(Monk.SECONDARY),
      },
      {
        "roleLabel": "Paladin",
        "roleImage": "assets/images/im_paladin.svg",
        "primaryColor": const Color(Paladin.PRIMARY),
        "secondaryColor": const Color(Paladin.SECONDARY),
      },
      {
        "roleLabel": "Ranger",
        "roleImage": "assets/images/im_ranger.svg",
        "primaryColor": const Color(Ranger.PRIMARY),
        "secondaryColor": const Color(Ranger.SECONDARY),
      },
      {
        "roleLabel": "Rogue",
        "roleImage": "assets/images/im_rogue.svg",
        "primaryColor": const Color(Rogue.PRIMARY),
        "secondaryColor": const Color(Rogue.SECONDARY),
      },
      {
        "roleLabel": "Sorcerer",
        "roleImage": "assets/images/im_sorcerer.svg",
        "primaryColor": const Color(Sorcerer.PRIMARY),
        "secondaryColor": const Color(Sorcerer.SECONDARY),
      },
      {
        "roleLabel": "Warlock",
        "roleImage": "assets/images/im_warlock.svg",
        "primaryColor": const Color(Warlock.PRIMARY),
        "secondaryColor": const Color(Warlock.SECONDARY),
      },
      {
        "roleLabel": "Wizard",
        "roleImage": "assets/images/im_wizard.svg",
        "primaryColor": const Color(Wizard.PRIMARY),
        "secondaryColor": const Color(Wizard.SECONDARY),
      },
      {
        "roleLabel": "Artificer",
        "roleImage": "assets/images/im_artificer.svg",
        "primaryColor": const Color(Artificer.PRIMARY),
        "secondaryColor": const Color(Artificer.SECONDARY),
      },
    ];

    _roles.asMap().forEach((idx, role) {
      final characterViewModel = CharacterViewModel(
        character: CharacterModel(
          name: "Grommash",
          role: role,
          race: "Orc",
          xp: 0,
          maxHP: 10,
          ac: 10,
        ),
      );
      expect(characterViewModel.roleLabel, _results[idx]["roleLabel"]);
      expect(characterViewModel.roleImage, _results[idx]["roleImage"]);
      expect(characterViewModel.primaryColor, _results[idx]["primaryColor"]);
      expect(
          characterViewModel.secondaryColor, _results[idx]["secondaryColor"]);
    });
  });
}

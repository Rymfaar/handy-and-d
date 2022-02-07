import 'package:flutter/material.dart';

import '../core/constants/color_style.dart';
import '../core/constants/margin.dart' as margin;
import '../core/constants/text_style.dart';
import '../viewmodels/character_viewmodel.dart';
import 'character_data_frame.dart';
import 'character_header_ac.dart';
import 'character_header_health.dart';
import 'character_header_level.dart';
import 'custom_text.dart';

class CharacterHeader extends StatelessWidget {
  const CharacterHeader({
    required this.characterData,
    Key? key,
  }) : super(key: key);

  final CharacterViewModel characterData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: margin.MARGIN_L),
        const CircleAvatar(
            backgroundColor: Color(Brand.SECONDARY), radius: 80.0),
        const SizedBox(height: margin.MARGIN_L),
        CustomText(characterData.name, defaultStyle: HEADER),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomText(characterData.race, defaultStyle: TEXT),
            const CustomText(' ', defaultStyle: TEXT),
            CustomText(
              characterData.roleLabel,
              defaultStyle: TEXT,
              textColor: characterData.primaryColor,
            ),
          ],
        ),
        const SizedBox(height: margin.MARGIN_L),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CharacterHeaderLevel(
                level: characterData.level, xp: characterData.xp),
            const SizedBox(width: margin.MARGIN_M),
            CharacterHeaderHealth(currentHP: 15, maxHP: characterData.maxHP),
            const SizedBox(width: margin.MARGIN_M),
            CharacterHeaderAC(ac: characterData.ac),
          ],
        ),
        const SizedBox(height: margin.MARGIN_L),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TODO(abeaudoin): hardcoded values -> get those data from viewmodel
            const CharacterDataFrame(
              label: 'Hit Dice',
              value: '1d10',
            ),
            const SizedBox(width: margin.MARGIN_M),
            // TODO(abeaudoin): hardcoded values -> get those data from viewmodel
            const CharacterDataFrame(
              label: 'Initiative',
              value: '+2',
            ),
            const SizedBox(width: margin.MARGIN_M),
            // TODO(abeaudoin): hardcoded values -> get those data from viewmodel
            const CharacterDataFrame(
              label: 'Speed',
              value: '30 feet',
            ),
            const SizedBox(width: margin.MARGIN_M),
            CharacterDataFrame(
              label: 'Proficiency',
              value: '+${characterData.proficiencyBonus}',
            ),
          ],
        ),
      ],
    );
  }
}

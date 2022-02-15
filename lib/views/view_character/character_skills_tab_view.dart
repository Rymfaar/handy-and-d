import 'package:flutter/material.dart';

import '../../core/constants/margin.dart' as margin;
import '../../viewmodels/character_viewmodel.dart';
import '../../widgets/character_data_frame.dart';
import '../../widgets/character_header.dart';
import '../../widgets/section_title.dart';
import 'character_controller.dart';

class CharacterSkillsTab extends StatelessWidget {
  const CharacterSkillsTab({
    required this.controller,
    required this.characterData,
    Key? key,
  }) : super(key: key);

  final CharacterViewModel characterData;
  final CharacterController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: margin.MARGIN_M),
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CharacterHeader(characterData: characterData),
              const SizedBox(height: margin.MARGIN_L),
              const SectionTitle('Abilities'),
              const SizedBox(height: margin.MARGIN_L),
              Column(
                children: <Row>[
                  Row(
                    children: <Widget>[
                      CharacterDataFrame(
                        label: 'Strength',
                        value: '${characterData.strengthMod}',
                      ),
                      const SizedBox(width: margin.MARGIN_M),
                      CharacterDataFrame(
                        label: 'Dexterity',
                        value: '${characterData.dexterityMod}',
                      ),
                      const SizedBox(width: margin.MARGIN_M),
                      CharacterDataFrame(
                        label: 'Constitution',
                        value: '${characterData.constitutionMod}',
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: margin.MARGIN_L),
              const SectionTitle('Skills'),
              const SizedBox(height: margin.MARGIN_L),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../core/constants/margin.dart' as margin;
import '../../core/constants/proficiency.dart';
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
              _abilityFrames(),
              const SizedBox(height: margin.MARGIN_L),
              const SectionTitle('Skills'),
              const SizedBox(height: margin.MARGIN_L),
              _skillFrames(),
              const SizedBox(height: margin.MARGIN_L),
            ],
          ),
        ),
      ),
    );
  }

  Column _skillFrames() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <CharacterDataFrame>[
            CharacterDataFrame(
              label: 'Acrobatics',
              value:
                  '${characterData.acrobatics + (characterData.proficiencies.contains(Proficiency.ACROBATICS) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.ACROBATICS),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Animal Handling',
              value:
                  '${characterData.animalHandling + (characterData.proficiencies.contains(Proficiency.ANIMAL_HANDLING) ? characterData.proficiencyBonus : 0)}',
              proficiency: characterData.proficiencies
                  .contains(Proficiency.ANIMAL_HANDLING),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Arcana',
              value:
                  '${characterData.arcana + (characterData.proficiencies.contains(Proficiency.ARCANA) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.ARCANA),
              roleColor: characterData.secondaryColor,
            ),
          ],
        ),
        const SizedBox(height: margin.MARGIN_S),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <CharacterDataFrame>[
            CharacterDataFrame(
              label: 'Athletics',
              value:
                  '${characterData.athletics + (characterData.proficiencies.contains(Proficiency.ATHLETICS) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.ATHLETICS),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Deception',
              value:
                  '${characterData.deception + (characterData.proficiencies.contains(Proficiency.DECEPTION) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.DECEPTION),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'History',
              value:
                  '${characterData.history + (characterData.proficiencies.contains(Proficiency.HISTORY) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.HISTORY),
              roleColor: characterData.secondaryColor,
            ),
          ],
        ),
        const SizedBox(height: margin.MARGIN_S),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <CharacterDataFrame>[
            CharacterDataFrame(
              label: 'Insight',
              value:
                  '${characterData.insight + (characterData.proficiencies.contains(Proficiency.INSIGHT) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.INSIGHT),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Intimidation',
              value:
                  '${characterData.intimidation + (characterData.proficiencies.contains(Proficiency.INTIMIDATION) ? characterData.proficiencyBonus : 0)}',
              proficiency: characterData.proficiencies
                  .contains(Proficiency.INTIMIDATION),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Investigation',
              value:
                  '${characterData.investigation + (characterData.proficiencies.contains(Proficiency.INVESTIGATION) ? characterData.proficiencyBonus : 0)}',
              proficiency: characterData.proficiencies
                  .contains(Proficiency.INVESTIGATION),
              roleColor: characterData.secondaryColor,
            ),
          ],
        ),
        const SizedBox(height: margin.MARGIN_S),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <CharacterDataFrame>[
            CharacterDataFrame(
              label: 'Medicine',
              value:
                  '${characterData.medicine + (characterData.proficiencies.contains(Proficiency.MEDICINE) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.MEDICINE),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Nature',
              value:
                  '${characterData.nature + (characterData.proficiencies.contains(Proficiency.NATURE) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.NATURE),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Perception',
              value:
                  '${characterData.perception + (characterData.proficiencies.contains(Proficiency.PERCEPTION) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.PERCEPTION),
              roleColor: characterData.secondaryColor,
            ),
          ],
        ),
        const SizedBox(height: margin.MARGIN_S),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <CharacterDataFrame>[
            CharacterDataFrame(
              label: 'Performance',
              value:
                  '${characterData.performance + (characterData.proficiencies.contains(Proficiency.PERFORMANCE) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.PERFORMANCE),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Persuasion',
              value:
                  '${characterData.persuasion + (characterData.proficiencies.contains(Proficiency.PERSUASION) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.PERSUASION),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Religion',
              value:
                  '${characterData.religion + (characterData.proficiencies.contains(Proficiency.RELIGION) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.RELIGION),
              roleColor: characterData.secondaryColor,
            ),
          ],
        ),
        const SizedBox(height: margin.MARGIN_S),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <CharacterDataFrame>[
            CharacterDataFrame(
              label: 'Sleight of Hands',
              value:
                  '${characterData.sleightOfHands + (characterData.proficiencies.contains(Proficiency.SLEIGHT_OF_HANDS) ? characterData.proficiencyBonus : 0)}',
              proficiency: characterData.proficiencies
                  .contains(Proficiency.SLEIGHT_OF_HANDS),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Stealth',
              value:
                  '${characterData.stealth + (characterData.proficiencies.contains(Proficiency.STEALTH) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.STEALTH),
              roleColor: characterData.secondaryColor,
            ),
            CharacterDataFrame(
              label: 'Survival',
              value:
                  '${characterData.survival + (characterData.proficiencies.contains(Proficiency.SURVIVAL) ? characterData.proficiencyBonus : 0)}',
              proficiency:
                  characterData.proficiencies.contains(Proficiency.SURVIVAL),
              roleColor: characterData.secondaryColor,
            ),
          ],
        ),
      ],
    );
  }

  Column _abilityFrames() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <CharacterDataFrame>[
            CharacterDataFrame(
              label: 'Strength',
              value: '${characterData.strengthMod}',
            ),
            CharacterDataFrame(
              label: 'Dexterity',
              value: '${characterData.dexterityMod}',
            ),
            CharacterDataFrame(
              label: 'Constitution',
              value: '${characterData.constitutionMod}',
            )
          ],
        ),
        const SizedBox(height: margin.MARGIN_M),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <CharacterDataFrame>[
            CharacterDataFrame(
              label: 'Intelligence',
              value: '${characterData.intelligenceMod}',
            ),
            CharacterDataFrame(
              label: 'Wisdom',
              value: '${characterData.wisdomMod}',
            ),
            CharacterDataFrame(
              label: 'Charisma',
              value: '${characterData.charismaMod}',
            )
          ],
        ),
      ],
    );
  }
}

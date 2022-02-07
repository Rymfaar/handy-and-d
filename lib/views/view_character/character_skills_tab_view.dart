import 'package:flutter/material.dart';
import 'package:handy_and_d/core/constants/margin.dart' as margin;
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';
import 'package:handy_and_d/views/view_character/character_controller.dart';
import 'package:handy_and_d/widgets/character_header.dart';
import 'package:handy_and_d/widgets/section_title.dart';

class CharacterSkillsTab extends StatelessWidget {
  final CharacterViewModel characterData;
  final CharacterController controller;

  const CharacterSkillsTab({
    required this.controller,
    required this.characterData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: margin.MARGIN_M),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            CharacterHeader(characterData: characterData),
            const SizedBox(height: margin.MARGIN_L),
            const SectionTitle("Stats"),
            const SizedBox(height: margin.MARGIN_L),
            const SectionTitle("Skills"),
          ],
        ),
      ),
    );
  }
}

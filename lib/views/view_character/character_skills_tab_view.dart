import 'package:flutter/material.dart';

import '../../core/constants/margin.dart' as margin;
import '../../viewmodels/character_viewmodel.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: margin.MARGIN_M),
      child: Align(
        child: Column(
          children: <Widget>[
            CharacterHeader(characterData: characterData),
            const SizedBox(height: margin.MARGIN_L),
            const SectionTitle('Stats'),
            const SizedBox(height: margin.MARGIN_L),
            const SectionTitle('Skills'),
          ],
        ),
      ),
    );
  }
}

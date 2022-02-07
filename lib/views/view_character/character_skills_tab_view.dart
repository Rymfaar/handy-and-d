import 'package:flutter/material.dart';
import 'package:handy_and_d/core/constants/margin.dart' as margin;
import 'package:handy_and_d/core/constants/color_style.dart';
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/core/enums/role.dart';
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';
import 'package:handy_and_d/views/view_character/character_controller.dart';
import 'package:handy_and_d/widgets/character_data_frame.dart';
import 'package:handy_and_d/widgets/character_header_ac.dart';
import 'package:handy_and_d/widgets/character_header_health.dart';
import 'package:handy_and_d/widgets/character_header_level.dart';
import 'package:handy_and_d/widgets/custom_text.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: margin.MARGIN_L),
            const CircleAvatar(backgroundColor: Color(Brand.SECONDARY), radius: 80.0),
            const SizedBox(height: margin.MARGIN_L),
            CustomText(text: characterData.name, defaultStyle: HEADER),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomText(text: characterData.race, defaultStyle: TEXT),
                const CustomText(text: " ", defaultStyle: TEXT),
                CustomText(
                  text: characterData.roleLabel,
                  defaultStyle: TEXT,
                  textColor: characterData.primaryColor,
                ),
              ],
            ),
            const SizedBox(height: margin.MARGIN_L),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CharacterHeaderLevel(level: characterData.level, xp: characterData.xp),
                const SizedBox(width: margin.MARGIN_M),
                CharacterHeaderHealth(currentHP: 15, maxHP: characterData.maxHP),
                const SizedBox(width: margin.MARGIN_M),
                CharacterHeaderAC(ac: characterData.ac),
              ],
            ),
            const SizedBox(height: margin.MARGIN_L),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                CharacterDataFrame(
                  label: "Hit Dice",
                  value: "1d10",
                  roleColor: Paladin.PRIMARY,
                ),
                SizedBox(width: margin.MARGIN_M),
                CharacterDataFrame(
                  label: "Initiative",
                  value: "+2",
                  roleColor: Paladin.PRIMARY,
                ),
                SizedBox(width: margin.MARGIN_M),
                CharacterDataFrame(
                  label: "Speed",
                  value: "30 feet",
                  roleColor: Paladin.PRIMARY,
                ),
                SizedBox(width: margin.MARGIN_M),
                CharacterDataFrame(
                  label: "Proficiency",
                  value: "+2",
                  roleColor: Paladin.PRIMARY,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

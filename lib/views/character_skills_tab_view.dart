import 'package:flutter/material.dart';
import 'package:handy_and_d/core/constants/margin.dart' as margin;
import 'package:handy_and_d/core/constants/color_style.dart';
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/core/enums/role.dart';
import 'package:handy_and_d/widgets/character_data_frame.dart';
import 'package:handy_and_d/widgets/character_header_ac.dart';
import 'package:handy_and_d/widgets/character_header_health.dart';
import 'package:handy_and_d/widgets/character_header_level.dart';
import 'package:handy_and_d/widgets/custom_text.dart';

class CharacterSkillsTab extends StatelessWidget {
  const CharacterSkillsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: margin.MARGIN_M),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: margin.MARGIN_L),
            const CircleAvatar(
                backgroundColor: Color(Brand.SECONDARY), radius: 80.0),
            const SizedBox(height: margin.MARGIN_L),
            const CustomText(text: "Archibald Kratan", defaultStyle: HEADER),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomText(text: "Dragonborn", defaultStyle: TEXT),
                CustomText(text: " ", defaultStyle: TEXT),
                CustomText(
                  text: "Paladin",
                  defaultStyle: TEXT,
                  textColor: Color(Paladin.PRIMARY),
                ),
              ],
            ),
            const SizedBox(height: margin.MARGIN_L),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CharacterHeaderLevel(level: 3, xp: 2125),
                SizedBox(width: margin.MARGIN_M),
                CharacterHeaderHealth(currentHP: 15, maxHP: 29),
                SizedBox(width: margin.MARGIN_M),
                CharacterHeaderAC(ac: 18),
              ],
            ),
            const SizedBox(height: margin.MARGIN_L),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
